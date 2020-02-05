const kMapValue = 0;
const kStringValue = 5;

L.NumberedDivIcon = L.Icon.extend({
  options: {
    iconSize: [40, 40],
    number: '',
    iconSize: new L.Point(40, 40),
    // iconAnchor: new L.Point(13, 41),
    // popupAnchor: new L.Point(0, -33),

  },

  createIcon: function () {
    var div = document.createElement('div');
    var img = new Image(this.options['iconSize'][0],this.options['iconSize'][1]);
    img.src = this.options['iconUrl'];
    div.appendChild ( img );

    if(this.options['number'] != undefined){
      var numdiv = document.createElement('div');
      numdiv.setAttribute ( "class", "icon_name" );
      numdiv.innerHTML = this.options['number'] || '';
      div.appendChild ( numdiv );
    }
    this._setIconStyles(div, 'icon');
    return div;
  }
});



var recursivelyOrderKeys = function(unordered) {
  // If it's an array - recursively order any
  // dictionary items within the array
  if (Array.isArray(unordered)) {
    unordered.forEach(function (item, index) {
      unordered[index] = recursivelyOrderKeys(item);
    });
    return unordered;
  }

  // If it's an object - let's order the keys
  if (typeof unordered === 'object') {
    var ordered = {};
    Object.keys(unordered).sort().forEach(function(key) {
      ordered[key] = recursivelyOrderKeys(unordered[key]);
    });
    return ordered;
  }

  return unordered;
};

class EventMonitor{
  constructor(elementId){
    this.table=document.getElementById(elementId);
    this.tableBody=this.table.createTBody();

    this.events = {};
  }

  registerMonitoredEvent(event){
    this.events[event.i] = event;
    this.addDOMMonitoredEvent(event);

  }

  removeMonitoredEvent(index){
    this.tableBody.removeChild(this.events[index].row);
  }

  addDOMMonitoredEvent(event){
    var row = this.tableBody.insertRow(0);

    var agentName = event.s;
    if(a_list[agentName] != null){
      agentName = a_list[agentName].getName();
    }

    var closeButton = document.createElement("button");
    closeButton.innerHTML = "close"
    closeButton.eventIndex = event.i;
    closeButton.addEventListener("click",function(){
      eventMonitor.removeMonitoredEvent(this.eventIndex);
    });
    row.insertCell(0).appendChild(closeButton);

    row.insertCell(1).innerHTML = agentName;
    row.insertCell(2).innerHTML = event.n;
    var sortedData = recursivelyOrderKeys(event.p);
    row.insertCell(3).innerHTML = JSON.stringify(sortedData, null, '  ');

    event.row = row;
  }
}

class EventGenerationPanel{
  constructor(elementId){
    this.eventDiv = null;
    this.eventContainer = document.getElementById(elementId);
    this.panel = this.addDOMCreateEventPanel();
    this.eventContainer.appendChild(this.panel);
  }

  registerAgent(agentObj){
    this.eventDiv.appendChild(this.addDOMGenerateAgentEvents(agentObj));
  }

  addDOMGenerateAgentEvents(agentObj){
    var panel = document.createElement("div");

    var agentName = document.createElement('button');
    agentName.innerHTML = agentObj.getName();
    agentName.classList.add('collapsible');
    agentName.classList.add('details');
    agentName.parent = agentObj;
    agentName.addEventListener('click',collapsibleListener);
    // agentName.addEventListener('click',requestKeyPair);
    panel.appendChild(agentName);
    
    panel.appendChild(this.addEvents(agentObj));


    return panel;
  }

  addEvents(agentObj){
    var eventDiv = document.createElement("div");
    eventDiv.classList.add('content');

    var schema = agentObj.getEventPool().getSchema().fields;
    console.log(schema);

    var schemaContainer = document.createElement("ul");

    for(var fieldName in schema){
      var field = schema[fieldName];

      var schemaAtt = document.createElement("li");

      var nameSpan = addDOMcreateSpan(fieldName+getNameType(schema[fieldName].type)+": ");
      schemaAtt.appendChild(nameSpan);

      if(field.type == kMapValue){
        schemaAtt.appendChild(this.addDOMSchema(schema[fieldName].data, fieldName, agentObj.getUUID()));
      }else{
        var textbox = document.createElement("input");
        textbox.uuid = agentObj.getUUID();
        textbox.keypair = fieldName;
        textbox.field = field;
        textbox.dataType = field.type;
        textbox.setAttribute('type','text')
        textbox.addEventListener('change',setEventParameter);
        // textbox.addEventListener('input',startEditingParameter);
        // this.textboxes[agentObj.getUUID()][fieldName].push(textbox);

        // registerObserver(field,
        //   function(userData){
        //     userData.textbox.value = userData.field.data;
        //   },
        //   {field : field,textbox: textbox});

        schemaAtt.appendChild(textbox);
      }

      var sendToSelected = document.createElement("button");
      sendToSelected.innerHTML = "Send to Selected";
      sendToSelected.uuid = agentObj.getUUID();
      sendToSelected.eventName = fieldName;
      sendToSelected.addEventListener('click',function(){
        triggerEvent(a_list[this.uuid],this.eventName,false);
      });

      schemaAtt.appendChild(sendToSelected);

      var sendToAllButton = document.createElement("button");
      sendToAllButton.innerHTML = "Send to All";
      sendToAllButton.uuid = agentObj.getUUID();
      sendToAllButton.eventName = fieldName;
      //sendToAllButton.onclick = "triggerEvent("+a_list[this.uuid]+","+this.eventName+",true)";
      sendToAllButton.addEventListener('click',function(){
        triggerEvent(a_list[this.uuid],this.eventName,true);
      });

      schemaAtt.appendChild(sendToAllButton);


      schemaContainer.appendChild(schemaAtt);
    }

    eventDiv.appendChild(schemaContainer);

    return eventDiv;
  }

  addDOMSchema(schema,keypairName,uuid)
  {
    var schemaContainer = document.createElement("ul");
    for(var fieldName in schema){
      var field = schema[fieldName];

      var schemaAtt = document.createElement("li");

      var nameSpan = addDOMcreateSpan(fieldName+getNameType(schema[fieldName].type)+": ");
      schemaAtt.appendChild(nameSpan);

      if(field.type == kMapValue){
        schemaAtt.appendChild(this.addDOMSchema(field.data,keypairName,uuid));
      }else{
        var textbox = document.createElement("input");
        textbox.uuid = uuid;
        textbox.keypair = keypairName;
        textbox.field = field;
        textbox.dataType = field.type;
        textbox.setAttribute('type','text')
        textbox.addEventListener('change',setEventParameter);
        // textbox.addEventListener('input',startEditingParameter);
        // this.textboxes[uuid][keypairName].push(textbox);

        // registerObserver(field,
        //   function(userData){
        //     userData.textbox.value = userData.field.data;
        //   },
        //   {field : field,textbox: textbox});

        schemaAtt.appendChild(textbox);
      }
      schemaContainer.appendChild(schemaAtt);
    }

    return schemaContainer;
  }

  addDOMCreateEventPanel(){
    var panel = document.createElement("div");

    var titleSpan = addDOMcreateSpan("Event Generation:");
    panel.appendChild(titleSpan);

    this.eventDiv = document.createElement("div");

    panel.appendChild(this.eventDiv);

    return panel;
  }

}

class ParameterConfigurationPanel{
  constructor(elementId){
    this.parameterDiv = null;
    this.configurationContainer = document.getElementById(elementId);
    this.panel = this.addDOMCreateConfigurationPanel();
    this.configurationContainer.appendChild(this.panel);

    this.textboxes = {};
  }

  processSetKey(reply){
    console.log(reply)
    console.log(this.textboxes)

    for(var entry of reply.agents){
      if(this.textboxes[entry.uid] == null)
        continue;
      if(entry.status == "set"){
        //White
        for(var textbox of this.textboxes[entry.uid][reply.topic])
          console.log(textbox)
          textbox.style.backgroundColor = "white";
      }else{
        //Red
        for(var textbox of this.textboxes[entry.uid][reply.topic])
          textbox.style.backgroundColor = "red";
      }
    }
  }

  addDOMCreateConfigurationPanel(){
    var panel = document.createElement("div");

    panel.appendChild(this.addDOMCreateOptionsDiv());
    panel.appendChild(this.addDOMCreateParametersDiv());

    return panel;
  }

  registerAgent(agentObj){
    this.parameterDiv.appendChild(this.addDOMGenerateAgentParameters(agentObj));
  }

  addDOMCreateParametersDiv(){
    var panel = document.createElement("div");

    var titleSpan = addDOMcreateSpan("Parameter Configuration:");
    panel.appendChild(titleSpan);

    this.parameterDiv = document.createElement("div");

    panel.appendChild(this.parameterDiv);

    return panel;
  }

  addDOMGenerateAgentParameters(agentObj){
    var panel = document.createElement("div");

    var agentName = document.createElement('button');
    agentName.innerHTML = agentObj.getName();
    agentName.classList.add('collapsible');
    agentName.classList.add('details');
    agentName.parent = agentObj;
    agentName.addEventListener('click',collapsibleListener);
    agentName.addEventListener('click',requestKeyPair);
    panel.appendChild(agentName);

    // var parametersDiv = document.createElement("div");
    // parametersDiv.classList.add('content');

    
    panel.appendChild(this.addKeypairs(agentObj));


    return panel;
  }

  addKeypairs(agentObj){
    var parametersDiv = document.createElement("div");
    parametersDiv.classList.add('content');

    var schema = agentObj.getKeypairPool().getSchema().fields;
    console.log(schema);

    this.textboxes[agentObj.getUUID()] = {};

    var schemaContainer = document.createElement("ul");

    var keys = [], i = 0;
    for (keys[i++] in schema) {};
    for(var fieldName of keys.sort()){
      var field = schema[fieldName];

      this.textboxes[agentObj.getUUID()][fieldName] = [];

      var schemaAtt = document.createElement("li");

      var nameSpan = addDOMcreateSpan(fieldName+getNameType(schema[fieldName].type)+": ");
      schemaAtt.appendChild(nameSpan);

      if(field.type == kMapValue){
        schemaAtt.appendChild(this.addDOMSchema(schema[fieldName].data, fieldName, agentObj.getUUID()));
      }else{
        var textbox = document.createElement("input");
        textbox.uuid = agentObj.getUUID();
        textbox.keypair = fieldName;
        textbox.field = field;
        textbox.dataType = field.type;
        textbox.setAttribute('type','text')
        textbox.addEventListener('change',setParameter);
        textbox.addEventListener('input',startEditingParameter);
        this.textboxes[agentObj.getUUID()][fieldName].push(textbox);

        registerObserver(field,
          function(userData){
            userData.textbox.value = userData.field.data;
          },
          {field : field,textbox: textbox});

        schemaAtt.appendChild(textbox);
      }
      schemaContainer.appendChild(schemaAtt);
    }

    parametersDiv.appendChild(schemaContainer);

    return parametersDiv;
  }

  addDOMSchema(schema,keypairName,uuid)
  {
    var schemaContainer = document.createElement("ul");
    for(var fieldName in schema){
      var field = schema[fieldName];

      var schemaAtt = document.createElement("li");

      var nameSpan = addDOMcreateSpan(fieldName+getNameType(schema[fieldName].type)+": ");
      schemaAtt.appendChild(nameSpan);

      if(field.type == kMapValue){
        schemaAtt.appendChild(this.addDOMSchema(field.data,keypairName,uuid));
      }else{
        var textbox = document.createElement("input");
        textbox.uuid = uuid;
        textbox.keypair = keypairName;
        textbox.field = field;
        textbox.dataType = field.type;
        textbox.setAttribute('type','text')
        textbox.addEventListener('change',setParameter);
        textbox.addEventListener('input',startEditingParameter);
        this.textboxes[uuid][keypairName].push(textbox);

        registerObserver(field,
          function(userData){
            userData.textbox.value = userData.field.data;
          },
          {field : field,textbox: textbox});

        schemaAtt.appendChild(textbox);
      }
      schemaContainer.appendChild(schemaAtt);
    }

    return schemaContainer;
  }

  addDOMCreateOptionsDiv(){
    var panel = document.createElement("div");

    var titleSpan = addDOMcreateSpan("Options:");
    panel.appendChild(titleSpan);

    var optionsDiv = document.createElement("div");

    var setAllButton = document.createElement("input");
    setAllButton.setAttribute('type','checkbox');
    setAllButton.setAttribute('id','setAll');
    optionsDiv.appendChild(setAllButton);

    var buttonLabel = document.createElement('label');
    buttonLabel.setAttribute('for','setAll');
    buttonLabel.innerHTML = "Set to All"
    optionsDiv.appendChild(buttonLabel);

    panel.appendChild(optionsDiv);

    return panel;
  }

  getPanel(){
    return this.panel;
  }
}

function startEditingParameter(){
  this.style.backgroundColor = "yellow";
}

function setEventParameter(){
  this.field.data = stringToType(this.value,this.dataType);
}

function setParameter(){
  this.style.backgroundColor = "orange";
  this.field.data = stringToType(this.value,this.dataType);
  var everyone = false;
  if(document.getElementById("setAll").checked){
    everyone = true;
  }
  console.log("called");
  var actionUID = setKeyPair(a_list[this.uuid],this.keypair,everyone);
}

class EventButtons{
  constructor(customEventListId,globalEventListId,guiEventButtons){
    this.customButtonList = document.getElementById(customEventListId);
    this.globalButtonList = document.getElementById(globalEventListId);

    for(var button of guiEventButtons.customEvents){
      this.addEventButton(button,"missionListItem",this.customButtonList,false);
    }

    for(var button of guiEventButtons.globalEvents){
      this.addEventButton(button,null,this.globalButtonList,true);
    }
  }

  agentSelectionChanged(){

  }

  addEventButton(buttonInfo,liClass,buttonList,everyone){
    var li = document.createElement("li");
    if(liClass != null)
      li.classList.add(liClass);
    
    var button = document.createElement("button");
    if(buttonInfo.styleClass != null)
      button.classList.add(buttonInfo.styleClass);
    button.innerHTML = buttonInfo.buttonText;
    button.eventName = buttonInfo.eventName;
    //Parse Parameter to Prepare Event Parameters
    button.parameters = {'t' : 0, d: {}};
    for (var parameter in buttonInfo.parameters){
      button.parameters.d[parameter] = {'d' : buttonInfo.parameters[parameter][0], 't' : buttonInfo.parameters[parameter][1]};
    }
    console.log(button.parameters);


    button.everyone = everyone;
    button.addEventListener("click",eventButtonClick);

    li.appendChild(button);
    buttonList.appendChild(li);
  }
}

function sendEvent(eventName,parameters,agents){
    var triggerEvent = {
      event : eventName,
      uid: -1,
      parameters: parameters
    }

    if(triggerEvent.parameters.t == 0 && "items" in triggerEvent.parameters.d){

      var itemsStr = ""
      for(key in listSelection.selectedItems){
        itemsStr += listSelection.selectedItems[key] + " ";
      }
      triggerEvent.parameters.d["items"].d = itemsStr;
    }

    if(agents.length != 0){
      triggerEvent["targets"] = [];
      for(agentUuid of agents){
        triggerEvent.targets.push(agentUuid);
      }
    }

    event_queue.push(triggerEvent);
}

function eventButtonClick(eventName){
  console.log(this.parameters,this.eventName);

    // var newValue = agentObj.getEventPool().getSchema().getJSONFirstField(eventName);

    // actionStatus = new ActionStatus("Event Trigger: "+eventName);

    var triggerEvent = {
      event : this.eventName,
      uid: -1,
      parameters: this.parameters
    }

    if(triggerEvent.parameters.t == 0 && "items" in triggerEvent.parameters.d){

      var itemsStr = ""
      for(key in listSelection.selectedItems){
        itemsStr += listSelection.selectedItems[key] + " ";
      }
      triggerEvent.parameters.d["items"].d = itemsStr;
    }

    if(!this.everyone){
      triggerEvent["targets"] = [];
      for(agentUuid of listSelection.selectedAgents){
        triggerEvent.targets.push(agentUuid);
      }
    }

    // bottomPanel.addNewActionStatus(actionStatus);
    // query.triggerEvent.uid = actionStatus.getUid();

    event_queue.push(triggerEvent);

    // return query.triggerEvent.uid;
}


class MonitoringPanel{
  constructor(elementId){
    this.monitoringContainer = document.getElementById(elementId);
    this.objectPanels = {};
  }

  getObjectPanel(objectName){
    return this.objectPanel[objectName];
  }

  registerObjectPanel(objectName, panel){
    this.objectPanels[objectName] = panel;
    this.monitoringContainer.appendChild(panel);
  }
}

function hideAgent(){
  this.objectPanel.style = "display: none";
  listSelection.deselectAgent(this.agentUuid);
  agentPool.getLayer().removeLayer(a_list[this.agentUuid].marker);
  setpointPool.removeItem(this.agentUuid);
  homePool.removeItem(this.agentUuid);

  console.log(a_list[this.agentUuid]);
}

class ObjectMonitoringPanel{
  constructor(parentObject, telemetryPool){
    this.parent = parentObject;
    this.pool = telemetryPool;
    this.objectPanel = this.addDOMObjectMonitoringPanel(parentObject,telemetryPool);
  }

  addDomSchema(schema)
  {
    var schemaContainer = document.createElement("ul");
    for(var fieldName in schema){
      var field = schema[fieldName];

      var schemaAtt = document.createElement("li");

      var nameSpan = addDOMcreateSpan(fieldName+": ");
      schemaAtt.appendChild(nameSpan);

      if(field.type == kMapValue){
        schemaAtt.appendChild(this.addDomSchema(field.data));
      }else{
        var dataSpan = document.createElement("span");

        registerObserver(field,
          function(userData){
            userData.dataSpan.innerHTML = userData.field.data;
          },
          {field : field,dataSpan: dataSpan});

        schemaAtt.appendChild(dataSpan);
      }
      schemaContainer.appendChild(schemaAtt);
    }

    return schemaContainer;
  }

  addDOMObjectMonitoringPanel(agent,telemetryPool)
  {
    var objectPanel = document.createElement("div");
    objectPanel.classList.add("agentPanel");

    //On click select
    onclick = document.createAttribute("onclick");
    onclick.value = "toggleAgentSelection(\""+agent.getUID()+"\",true)";
    objectPanel.setAttributeNode(onclick);

    //Agent Name
    var nameContainer = document.createElement("div");

    var closeButton = document.createElement("button");
    closeButton.addEventListener("click",hideAgent);
    closeButton.objectPanel = objectPanel;
    closeButton.agentUuid = agent.getUID();
    closeButton.innerHTML = "Hide";
    if(a_list[agent.getUID()].isOnline()){
      closeButton.disabled = true;
    }else{
      closeButton.disabled = false;
    }
    
    closeButton.style = "float:right";
    nameContainer.appendChild(closeButton);

    var nameSpan = addDOMcreateSpan(a_list[agent.getUID()].getName(),'agentName');
    nameContainer.appendChild(nameSpan);
    objectPanel.appendChild(nameContainer);

    if(agentTypes[a_list[agent.getUID()].getType()] != null)
    {
      var middlePart = document.createElement("div");
      middlePart.setAttribute('style','display: flex;flex-direction: row;')
      //Add Icon
      this.addDOMIcon(middlePart,agent,closeButton);
      //Add Light Bulb
      this.addDOMLightBulb(middlePart,agent);
      //Add Quick Information
      this.addDOMQuickInfo(middlePart,agent);

      objectPanel.appendChild(middlePart);
    }

    //Add Other Details
    this.addDOMDetailedInformation(objectPanel,agent,telemetryPool);

    return objectPanel;
  }

  addDOMLightBulb(parent,agent){
    var agentObj = a_list[agent.getUID()]
    var agentConf = agentTypes[agentObj.getType()];

    //If agent don't have the conf return
    console.log(agentConf)
    if(!("lightBulb" in agentConf)){
      return;
    }

    var bulbPanel = document.createElement("div");

    var bulb = document.createElement("div");
    bulb.classList.add('circle');

    bulbPanel.appendChild(bulb);

    var bulbField = agentObj.telemetryPool.getSchema().getField(agentConf.lightBulb.topic);

    if(bulbField != null)
    {
      var data = {bulbField: bulbField, bulb: bulb, agent: agentObj};
      var callback = function(userData){
        userData.bulb.style.backgroundColor = agentTypes[userData.agent.getType()].lightBulb.mapping[userData.bulbField.data];
      };

      registerObserver(bulbField,callback,data);
    }

    parent.appendChild(bulbPanel);
  }

  addDOMIcon(parent,agent,closeButton){
    var iconPanel = document.createElement("div");

    var imgDiv = document.createElement("div");
    imgDiv.setAttribute("style","position: relative; width: 40px; height: 40px")

    var agentObj = a_list[agent.getUID()]
    var agentIcon = new Image(40, 40);
    agentIcon.src = agentTypes[agentObj.getType()].iconState.default.defaultIcon.src;
    imgDiv.appendChild(agentIcon);

    // var numdiv = document.createElement('div');
    // numdiv.appendChild(addDOMcreateSpan(agentObj.getIndexNumber()));
    // numdiv.setAttribute ( "class", "icon_number" );
    // imgDiv.appendChild(numdiv);

    iconPanel.appendChild(imgDiv);

    var statusDiv = document.createElement("div");

    var spanText = "OFFLINE";
    var spanClass = "offlineStatus";

    if(agentObj.isOnline()){
      spanText = "ONLINE";
      spanClass = "onlineStatus";
    }

    var statusSpan = addDOMcreateSpan(spanText,spanClass);
    statusDiv.appendChild(statusSpan);
    iconPanel.appendChild(statusDiv);

    agentObj.onlineObservers.push({
      fnct: function(userData){
        if(userData.agent.isOnline()){
          userData.span.innerHTML = "ONLINE";
          userData.span.classList.add("onlineStatus");
          userData.span.classList.remove("offlineStatus");
          userData.button.disabled = true;
        }else{
          userData.span.innerHTML = "OFFLINE";
          userData.span.classList.remove("onlineStatus");
          userData.span.classList.add("offlineStatus");
          userData.button.disabled = false;
        }
      },
      data: {span: statusSpan, agent: agentObj, button: closeButton}
    });

    parent.appendChild(iconPanel);
  }

  addDOMDetailedInformation(parent,agent,telemetryPool){
    var contentWrapper = document.createElement("div");

    var detailsButton = document.createElement("button");
    detailsButton.classList.add('collapsible');
    detailsButton.classList.add('details');
    detailsButton.addEventListener('click',collapsibleListener);
    detailsButton.innerHTML = "Telemetry View";
    contentWrapper.appendChild(detailsButton);

    var contentDiv = document.createElement("div");
    contentDiv.classList.add("content");

    var innerContainer = document.createElement("div");

    //Telemetry Data
    var agentTelemetryPool = document.createElement("div");
    agentTelemetryPool.appendChild(this.addDomSchema(telemetryPool.getSchema().fields));
    innerContainer.appendChild(agentTelemetryPool);

    contentDiv.appendChild(innerContainer);
    contentWrapper.appendChild(contentDiv);
    parent.appendChild(contentWrapper);

  }

  addDOMQuickInfo(parent,agent){
    var agent_quicklist = agentTypes[a_list[agent.getUID()].getType()].quickdata;

    var quickInfoPanel = document.createElement("div");
    quickInfoPanel.setAttribute('style','flex: 1;width:100%');

    var table = document.createElement("table");
    table.setAttribute("style","width:100%");

    var headerRow = document.createElement("tr");
    var dataRow = document.createElement("tr");
    for(var key in agent_quicklist){

      var headerTd = document.createElement("td");
      headerTd.appendChild(addDOMcreateSpan(key));
      headerRow.appendChild(headerTd);

      var dataTd = document.createElement("td");
      var dataSpan = addDOMcreateSpan('...');
      dataTd.appendChild(dataSpan);
      dataRow.appendChild(dataTd);

      var field = a_list[agent.getUID()].telemetryPool.getSchema().getField(agent_quicklist[key]);
      if(field == null){
        dataSpan.innerHTML = 'error';
      }else{
        registerObserver(field,
          function(userData){
            if(isNumber(userData.field.data)){
              userData.dataSpan.innerHTML = Math.round(userData.field.data * 1000000) / 1000000;
            }else{
              userData.dataSpan.innerHTML = userData.field.data;
            }
          },
          {field : field,dataSpan: dataSpan});
      }

    }

    table.appendChild(headerRow);
    table.appendChild(dataRow);
    quickInfoPanel.appendChild(table);
    parent.appendChild(quickInfoPanel);
  }

  getObjectPanel(){
    return this.objectPanel;
  }
}

function isNumber(value) {
    if ((undefined === value) || (null === value)) {
        return false;
    }
    if (typeof value == 'number') {
        return true;
    }
    return !isNaN(value - 0);
}

function addDOMcreateSpan(innerText,className=null){
    var spanElement = document.createElement("span");
    if(className != null)
      spanElement.classList.add(className);
    spanElement.appendChild(document.createTextNode(innerText));
    return spanElement
}

class MonitorableObject{
  constructor(uuid, telemetryPool){
    this.uid = uuid;
    this.telemetryPool = telemetryPool;

    this.parameters = {};
    this.telemetry =  {};
    this.vis = {
        telemetry:{
          telemetryPool: null,
          telemetryPtr: {}
        },
        parameters:{
          paramPool: null,
          paramPtr: {}
        }
    };

    var agentObj = a_list[uuid];
    if(agentObj != null){
      //agentObj.setTelemetryPool(telemetryPool);
      this.monitoringPanel = new ObjectMonitoringPanel(this,this.telemetryPool);
      if("agentPool" in window){
        agentPool.registerObject(uuid,a_list[uuid]);       
      }

      if("setpointPool" in window){
        setpointPool.registerObject(uuid,a_list[uuid]);
      }

      if("homePool" in window){
        homePool.registerObject(uuid,a_list[uuid]); 
      }

    }
  }

  getUID(){
    return this.uid;
  }

  getMonitoringPanel(){
    return this.monitoringPanel.getObjectPanel();
  }
}

class MonitorableObjectPool{
  constructor(monitorPanel=null){
    this.pool = {};
    this.monitorPanel = monitorPanel;
  }

  registerNewObject(objectName,telemetryPool){
    var newObj = new MonitorableObject(objectName,telemetryPool); 
    this.pool[objectName] = newObj;
    if(this.monitorPanel != null){
      this.monitorPanel.registerObjectPanel(newObj.getUID(),newObj.getMonitoringPanel());
    }
    return newObj;
  }

  getObject(objectName){
    return this.pool[objectName];
  }
}

class StatusPanel{
  constructor(elementId){
    this.container = document.getElementById(elementId);
    this.uid_counter = 0;
    this.actions = {};
  }

  addNewActionStatus(actionStatus){
    var actionUid = this.uid_counter++;
    actionStatus.setUid(actionUid);
    this.actions[actionUid] = actionStatus;
    actionStatus.addCloseButton(actionUid);
    // this.container.appendChild(actionStatus.getPanel());
    return actionUid;
  }

  removeAction(actionUid){
    this.container.removeChild(this.actions[actionUid].getPanel());
    delete this.actions[actionUid];
  }

  getAction(actionId){
    return this.actions[actionId];
  }
}

class ActionStatus{
  constructor(actionText){
    this.panel = document.createElement("div");
    this.header = document.createElement("div");;
    this.header.appendChild(document.createTextNode(actionText));
    this.panel.appendChild(this.header);
    this.targets = {};
    this.uid = -1;
  }

  addTarget(objectName){
    var targetDiv = document.createElement("div");

    var targetName = document.createElement("span");
    targetName.appendChild(document.createTextNode(objectName+":"));
    targetDiv.appendChild(targetName);

    var status = document.createElement("span");
    targetDiv.appendChild(status);
    //agentParamVal.appendChild(document.createTextNode(objectName+":"));

    this.targets[objectName] = {div : targetDiv, span: status};
    this.panel.appendChild(targetDiv);
  }

  updateTargetStatus(objectName, status){
    var target = this.targets[objectName];
    if(target == null)
      return;
    target.span.appendChild(document.createTextNode(status));
    if(status == "triggered" || status == "set")
      target.div.classList.add("goodStatus");
    else
      target.div.classList.add("badStatus");
  }

  getPanel(){
    return this.panel;
  }

  addCloseButton(actionUid){
    var button = document.createElement("input");
    button.classList.add("statusCloseButton");
    var type = document.createAttribute("type");
    type.value = "button";
    button.setAttributeNode(type);
    button.value = "Close";
    var onclick = document.createAttribute("onclick");
    onclick.value = "closeStatus("+actionUid+")";
    button.setAttributeNode(onclick);
    this.header.appendChild(button);
  }

  setUid(uid){
    this.uid = uid;
  }

  getUid(){
    return this.uid;
  }

}

class ListSelection{
  constructor(){
    this.selectedAgents = [];
    this.selectedItems = [];
  }

  mapSelectionCallback(e){
    if(e.sourceTarget.options.icon.parent instanceof Agent){
      listSelection.toggleAgent(e.sourceTarget.options.icon.parent.getUUID())
    }else{
      listSelection.toggleItem(e.sourceTarget.options.icon.parent.getUUID())
    }
  }

  selectItem(itemUuid){
    if(this.selectedItems.includes(itemUuid))
      return;

    this.selectedItems.push(itemUuid);
    i_list[itemUuid].isSelected(true);
  }

  selectAgent(agentUuid){
    if(this.selectedAgents.includes(agentUuid))
      return;

    this.selectedAgents.push(agentUuid);

    monitorableObjectPool.getObject(agentUuid).getMonitoringPanel().classList.add('selectedAgent');
    a_list[agentUuid].isSelected(true);
  }

  deselectItem(itemUuid){
    if(!this.selectedItems.includes(itemUuid))
      return;

    var index = this.selectedItems.indexOf(itemUuid);
    if (index > -1) {
      this.selectedItems.splice(index, 1);
    }

    i_list[itemUuid].isSelected(false);
  }

  deselectAgent(agentUuid){
    if(!this.selectedAgents.includes(agentUuid))
      return;

    var index = this.selectedAgents.indexOf(agentUuid);
    if (index > -1) {
      this.selectedAgents.splice(index, 1);
    }

    monitorableObjectPool.getObject(agentUuid).getMonitoringPanel().classList.remove('selectedAgent');
    a_list[agentUuid].isSelected(false);
  }

  toggleItem(itemUuid){
    if(this.selectedItems.includes(itemUuid)){
      this.deselectItem(itemUuid);
    }else{
      this.selectItem(itemUuid);
    }
  }

  toggleAgent(agentUuid){
    if(this.selectedAgents.includes(agentUuid)){
      this.deselectAgent(agentUuid);
    }else{
      this.selectAgent(agentUuid);
    }
  }
}

a_list = {};
console.log(a_list);
i_list = {};
console.log(i_list);

leftPanel = new MonitoringPanel("monitor");
if(document.getElementById("eventMonitor") != null){
  eventMonitor = new EventMonitor("eventMonitor");
}
bottomPanel = new StatusPanel("status");
monitorableObjectPool = new MonitorableObjectPool(leftPanel);
parameterConfiguration = new ParameterConfigurationPanel("parameter_configuration_panel");
eventGenerationPanel = new EventGenerationPanel("event_trigger_panel");
console.log(parameterConfiguration);
listSelection = new ListSelection();
console.log(listSelection)
if(document.getElementById("customEventList") != null && document.getElementById("globalEventList") != null){
  eventButtons = new EventButtons("customEventList","globalEventList",guiEventButtons);
}

//monitorableObjectPool.getObject("testObject");

//agent1 = new MonitorableObject("testObject");
//leftPanel.registerObjectPanel(agent1.getUID(),agent1.getMonitoringPanel());

function closeStatus(actionUid){
  bottomPanel.removeAction(actionUid);
}

function toggleAgentSelection(uuid){
  listSelection.toggleAgent(uuid);
}

function selectAllAgents(){
  for(uuid in a_list){
    listSelection.selectAgent(uuid);
  }
}

function deselectAllAgents(){
  for(uuid in a_list){
    listSelection.deselectAgent(uuid);
  }
}

// ======================================================================================================
pendingSubscriptions = null;
function sendSubscriptions(checkbox,agent_name,telemetry_name){
  var subscribe = [];

  for (uuid in a_list){
    if(a_list[uuid].getTelemetryPool() == null)
      continue;

    var telemetryPool = a_list[uuid].getTelemetryPool();
    agent_subsctiptions = {
      uid: uuid,
      telemetry: []
    }

    for(telemetryName in telemetryPool.getSchema().fields){
      agent_subsctiptions.telemetry.push(telemetryName);
    }

    subscribe.push(agent_subsctiptions);
  }
  pendingSubscriptions = subscribe;
}

var saved_enviroment = getDefaultEnviroment();
var keypair_list = {};
var agent_list = {};
var updateNumber = -1;
var statusNumber = -1;
var eventNumber = 0;
var pendingUpdate = true;
var pendingKeypair = {};
var pendingStatusUpdate = true;
var pendingEventUpdate = true;

function getDefaultEnviroment(){
  return {
    discovery:{
      keypair_list: {},
      event_list: {},
      telemetry_list: {},
    },
    user_events: {},
    mapView:{
      lat: mapLayerParam.lat,
      lng: mapLayerParam.lng,
      zoomLevel : mapLayerParam.zoomLevel
    }
  };
}

//DOM Functions
function addDomParameter(agent,parameter,parameterData){
  keypair_list = saved_enviroment.discovery.keypair_list;
  if(keypair_list[parameter].enabled){
      var agentParamDiv = document.createElement("div");
      agentParamDiv.classList.add("attribute");
      paramName = (keypair_list[parameter].alias.length == 0 ? keypair_list[parameter].name : keypair_list[parameter].alias)
      textName = document.createTextNode(paramName+": ")
      agentParamDiv.appendChild(textName);

      agentParamVal = document.createElement("span");
      textVal = document.createTextNode(parameterData)
      agentParamVal.appendChild(textVal);
      agent.vis.parameters.paramPtr[parameter] = {dispElement:agentParamDiv, name: textName, val:textVal};
      agentParamDiv.appendChild(agentParamVal);

      agent.vis.parameters.paramPool.appendChild(agentParamDiv);
  }

  return;

}

function addDomInfoPanel(agent)
{
  var infoDiv = document.createElement("div");

  var droneNameSpan = document.createElement("span");
  droneNameSpan.appendChild(document.createTextNode(agent.uid));
  infoDiv.appendChild(droneNameSpan);

  document.getElementById("info").appendChild(infoDiv);

  var agentParamPool = document.createElement("div");
  infoDiv.appendChild(agentParamPool);

  agent.vis.paramPool = agentParamPool;

}

function addDOMTelemetryPanel(agent)
{
  var telemetryDiv = document.createElement("div");
  telemetryDiv.classList.add("agentPanel");

  var droneNameSpan = document.createElement("span");
  droneNameSpan.classList.add("nameSpan");
  droneNameSpan.appendChild(document.createTextNode(agent.uid));
  telemetryDiv.appendChild(droneNameSpan);

  var agentTelemetryPool = document.createElement("div");
  telemetryDiv.appendChild(agentTelemetryPool);

  agent.vis.telemetry.telemetryPool = agentTelemetryPool;

  document.getElementById("telemetry_monitor").appendChild(telemetryDiv);

}

function generateEventDom(div,event)
{
  var eventDiv = document.createElement("div");
  eventDiv.appendChild(document.createTextNode(event.name));

  var paramDiv = document.createElement("div");
  for(param in event.parameters){
    paramDiv.appendChild(document.createTextNode(param+"("+getNameType(event.parameters[param])+"):"));

    var textbox = document.createElement("input");
    type = document.createAttribute("type");
    type.value = "textbox";
    textbox.setAttributeNode(type);
    id = document.createAttribute("id");
    id.value = "event-"+event.name+"-"+param+"-val";
    textbox.setAttributeNode(id);
    paramDiv.appendChild(textbox);
  }

  var button = document.createElement("input");
  type = document.createAttribute("type");
  type.value = "button";
  button.setAttributeNode(type);
  button.value = "Trigger Selected";
  onclick = document.createAttribute("onclick");
  onclick.value = "triggerEvent(\""+event.name+"\",false)";
  button.setAttributeNode(onclick);
  paramDiv.appendChild(button);

  var button = document.createElement("input");
  type = document.createAttribute("type");
  type.value = "button";
  button.setAttributeNode(type);
  button.value = "Trigger All";
  onclick = document.createAttribute("onclick");
  onclick.value = "triggerEvent(\""+event.name+"\",true)";
  button.setAttributeNode(onclick);
  paramDiv.appendChild(button);

  var span = document.createElement("span");
  span.appendChild(document.createTextNode(" - "));
  paramDiv.appendChild(span);

  var hotkeyName = document.createElement("input");
  type = document.createAttribute("type");
  type.value = "textbox";
  hotkeyName.setAttributeNode(type);
  id = document.createAttribute("id");
  id.value = "gen-event-"+event.name;
  hotkeyName.setAttributeNode(id);
  paramDiv.appendChild(hotkeyName);

  var button = document.createElement("input");
  type = document.createAttribute("type");
  type.value = "button";
  button.setAttributeNode(type);
  button.value = "Create Hotkey";
  onclick = document.createAttribute("onclick");
  onclick.value = "generateEventHotkey(\""+event.name+"\")";
  button.setAttributeNode(onclick);
  paramDiv.appendChild(button);


  eventDiv.appendChild(paramDiv);



  div.appendChild(eventDiv);
  
}

function triggerUserEvent(eventHotkey){
  event = saved_enviroment.user_events[eventHotkey];
  triggerEvent(event.orginalEventName,false,event.parameters);
}

function generateEventHotkey(eventName){
  event_info = saved_enviroment.discovery.event_list[eventName];
  eventHotkey = document.getElementById("gen-event-"+eventName).value;

  //Check if the custom event exists
  if(eventHotkey.length == 0 || saved_enviroment.user_events[eventHotkey] != null){
    return;
  }

  //Create the custom event
  savedEvent = {
    orginalEventName : eventName,
    userEventName : eventHotkey,
    parameters : {}
  }

  for(param in event_info.parameters){
    val = stringToType(document.getElementById("event-"+eventName+"-"+param+"-val").value,event_info.parameters[param]);
    savedEvent.parameters[param] = val;
  }

  //Store the custom event
  saved_enviroment.user_events[eventHotkey] = savedEvent;
  setCookie("enviroment", saved_enviroment, 365);

  //Generate DOM elements
  addDOMuserEvent(eventHotkey)

}

function addDOMuserEvent(eventHotkey){
  var li = document.createElement("li");

  var button = document.createElement("input");
  type = document.createAttribute("type");
  type.value = "button";
  button.setAttributeNode(type);
  button.value = eventHotkey;
  onclick = document.createAttribute("onclick");
  onclick.value = "triggerUserEvent(\""+eventHotkey+"\")";
  button.setAttributeNode(onclick);
  classAtt = document.createAttribute("class");
  classAtt.value = "event_button";
  button.setAttributeNode(classAtt);

  li.appendChild(button);
  document.getElementById("user_events").appendChild(li);
}

function generateTelemetryDom(table,telemetry)
{
  var optionRow = document.createElement("tr");

  var optionName = document.createElement("td");
  optionName.appendChild(document.createTextNode(telemetry.name));
  optionRow.appendChild(optionName);

  var optionEnabled = document.createElement("td");
  var checkbox = document.createElement("input");
  type = document.createAttribute("type");
  type.value = "checkbox";
  checkbox.setAttributeNode(type);
  onclick = document.createAttribute("onclick");
  onclick.value = "telemetryCheckboxChange(this,\""+telemetry.name+"\")";
  checkbox.setAttributeNode(onclick);
  if(telemetry.enabled){
    checked = document.createAttribute("checked");
    checkbox.setAttributeNode(checked);
  }
  optionEnabled.appendChild(checkbox);
  optionRow.appendChild(optionEnabled);

  var optionAlias = document.createElement("td");
  var textbox = document.createElement("input");
  type = document.createAttribute("type");
  type.value = "textbox";
  textbox.setAttributeNode(type);
  onchange = document.createAttribute("onchange");
  onchange.value = "telemetryTextboxChange(this,\""+telemetry.name+"\")";
  textbox.setAttributeNode(onchange);
  textbox.value = telemetry.alias;
  optionAlias.appendChild(textbox);
  optionRow.appendChild(optionAlias);


  table.appendChild(optionRow);
}

function runtimeTelemetryDom(div,agent_telemetry_json)
{
  var telemetryDiv = document.createElement("div");
  telemetryDiv.appendChild(document.createTextNode(agent_telemetry_json["name"]));

  var table = document.createElement("div");

  agent_subsctiptions = {
      uid: agent_telemetry_json["name"],
      telemetry: {}
    }

  for (key in agent_telemetry_json["telemetry"]){
    var tr = document.createElement("tr");
    var telemetryName = document.createElement("td");
    tr.appendChild(telemetryName);
    telemetryName.appendChild(document.createTextNode(key));
    var telemetryEnabled = document.createElement("td");
    tr.appendChild(telemetryEnabled);

    var optionEnabled = document.createElement("td");
    var checkbox = document.createElement("input");
    type = document.createAttribute("type");
    type.value = "checkbox";
    checkbox.setAttributeNode(type);
    onclick = document.createAttribute("onclick");
    onclick.value = "sendSubscriptions(this,\""+agent_telemetry_json["name"]+"\",\""+key+"\")";
    checkbox.setAttributeNode(onclick);
    if(saved_enviroment.discovery.telemetry_list[key].enabled){
      checked = document.createAttribute("checked");
      checkbox.setAttributeNode(checked);
    }

    optionEnabled.appendChild(checkbox);
    telemetryEnabled.appendChild(optionEnabled);
    table.appendChild(tr);

    agent_subsctiptions.telemetry[key] = {enabled : saved_enviroment.discovery.telemetry_list[key].enabled}
  }




  telemetryDiv.appendChild(table);
  div.appendChild(telemetryDiv);

  return agent_subsctiptions;
}

function generateKeyPairDom(table,keypair)
{
  //Generate Options
  var optionRow = document.createElement("tr");

  var optionName = document.createElement("td");
  optionName.appendChild(document.createTextNode(keypair.name));
  optionRow.appendChild(optionName);

  var optionEnabled = document.createElement("td");
  var checkbox = document.createElement("input");
  type = document.createAttribute("type");
  type.value = "checkbox";
  checkbox.setAttributeNode(type);
  onclick = document.createAttribute("onclick");
  onclick.value = "keypairCheckboxChange(this,\""+keypair.name+"\")";
  checkbox.setAttributeNode(onclick);
  if(keypair.enabled){
    checked = document.createAttribute("checked");
    checkbox.setAttributeNode(checked);
  }
  optionEnabled.appendChild(checkbox);
  optionRow.appendChild(optionEnabled);

  var optionAlias = document.createElement("td");
  var textbox = document.createElement("input");
  type = document.createAttribute("type");
  type.value = "textbox";
  textbox.setAttributeNode(type);
  onchange = document.createAttribute("onchange");
  onchange.value = "keypairTextboxChange(this,\""+keypair.name+"\")";
  textbox.setAttributeNode(onchange);
  textbox.value = keypair.alias;
  optionAlias.appendChild(textbox);
  optionRow.appendChild(optionAlias);

  table.appendChild(optionRow);

  //Generate Configuration
  if(keypair.write){
    var configDiv = document.createElement("div");
    configDiv.appendChild(document.createTextNode(keypair.name));
    var paramDiv = document.createElement("div");

    var paramType = document.createElement("span");
    paramType.appendChild(document.createTextNode(getNameType(keypair.type)+": "));
    paramDiv.appendChild(paramType);

    var textbox = document.createElement("input");
    type = document.createAttribute("type");
    type.value = "textbox";
    textbox.setAttributeNode(type);

    id = document.createAttribute("id");
    id.value = keypair.name+"-set";
    textbox.setAttributeNode(id);

    paramDiv.appendChild(textbox);

    var button = document.createElement("input");
    type = document.createAttribute("type");
    type.value = "button";
    button.setAttributeNode(type);
    button.value = "Send";
    onclick = document.createAttribute("onclick");
    onclick.value = "setKeyPair(\""+keypair.name+"\")";
    button.setAttributeNode(onclick);
    paramDiv.appendChild(button);

    var button1 = document.createElement("input");
    type = document.createAttribute("type");
    type.value = "button";
    button1.setAttributeNode(type);
    button1.value = "Send Selected";
    onclick = document.createAttribute("onclick");
    onclick.value = "setKeyPair(\""+keypair.name+"\",false)";
    button1.setAttributeNode(onclick);
    paramDiv.appendChild(button1);

    configDiv.appendChild(paramDiv);

    document.getElementById("keypair_configure").appendChild(configDiv);
  }

}

setkey_queue = [];
function setKeyPair(agentObj,paramName,everyone=false){
  // keypair_list = saved_enviroment.discovery.keypair_list;
  var newValue = agentObj.getKeypairPool().getSchema().getJSONFirstField(paramName);

  actionStatus = new ActionStatus("Set "+paramName);

  query = {
    setKeypair : {
      topic : paramName,
      uid: -1,
      value: newValue,
    }
  }

  if(everyone){
    for (agentId in a_list){
      actionStatus.addTarget(agentId);
    }
    
  }else{
    query.setKeypair["targets"] = [];
    // for (agent of selected_objects){
    query.setKeypair.targets.push(agentObj.getUUID());
    actionStatus.addTarget(agentObj.getUUID());
    // }
  }

  bottomPanel.addNewActionStatus(actionStatus);
  query.setKeypair.uid = actionStatus.getUid();

  //console.log(JSON.stringify(query))
  //updateEventMonitor(query)
  setkey_queue.push(query.setKeypair);

  return query.setKeypair.uid;
}


event_queue = [];
function triggerEvent(agentObj,eventName,everyone=false){

  var newValue = agentObj.getEventPool().getSchema().getJSONFirstField(eventName);
  console.log(newValue)

  actionStatus = new ActionStatus("Event Trigger: "+eventName);

  query = {
    triggerEvent : {
      event : eventName,
      uid: -1,
      parameters: newValue,
    }
  }

  if(query.triggerEvent.parameters.t == 0 && "items" in query.triggerEvent.parameters.d){

    var itemsStr = ""
    for(key in listSelection.selectedItems){
      itemsStr += listSelection.selectedItems[key] + " ";
    }
    query.triggerEvent.parameters.d["items"].d = itemsStr;
  }

  if(!everyone){
    query.triggerEvent["targets"] = [];
    for(agentUuid of listSelection.selectedAgents){
      query.triggerEvent.targets.push(agentUuid);
    }
  }

  console.log(query)

  bottomPanel.addNewActionStatus(actionStatus);
  query.triggerEvent.uid = actionStatus.getUid();

  event_queue.push(query.triggerEvent);

  return query.triggerEvent.uid;
}


// function triggerEvent(eventName,everyone,params=null){
//   event_info = saved_enviroment.discovery.event_list[eventName];



//   query = {
//     triggerEvent : {
//       event : eventName,
//       uid : -1,
//       parameters: []
//     }
//   }

//   actionStatus = new ActionStatus("Event Trigger: "+eventName);

//   if(everyone == false){
//     query.triggerEvent["targets"] = [];
//     for (agent of selected_objects){
//       query.triggerEvent.targets.push(agent.uid);
//       actionStatus.addTarget(agent.uid);
//     }
//   }else{
//     for (agentId in a_list){
//       actionStatus.addTarget(agentId);
//     }
//   }

//   bottomPanel.addNewActionStatus(actionStatus);
//   query.triggerEvent.uid = actionStatus.getUid();

//   if(params == null){
//     for(param in event_info.parameters){
//       val = stringToType(document.getElementById("event-"+eventName+"-"+param+"-val").value,event_info.parameters[param]);
//       query.triggerEvent.parameters.push ({
//         name: param,
//         value: val,
//         type: event_info.parameters[param]
//       });
//     }
//   }else{
//     for(param in event_info.parameters){
//       val = stringToType(params[param],event_info.parameters[param]);
//       query.triggerEvent.parameters.push ({
//         name: param,
//         value: val,
//         type: event_info.parameters[param]
//       });
//     }
//   }
//   //console.log(query)
//   //updateEventMonitor(query)
//   event_queue.push(query.triggerEvent);
// }

function getNameType(type){
  switch(type){
    case 0:
      return ""
    case 1:
      return "(bool)"
    case 2:
      return "(int)"
    case 3:
      return "(uint)"
    case 4:
      return "(double)"
    case 5:
      return "(string)"
    case 6:
      return "(map)"
    case 11:
      return "(bool[])"
    case 12:
      return "(int[])"
    case 13:
      return "(uint[])"
    case 14:
      return "(double[])"
    case 15:
      return "(string[])"
    case 16:
      return "(map[])"
    default:
      return "(Unknown)"
  }
}

function getTypeDefaults(type){
  switch(type){
    case 0:
      return {};
    case 1:
      return false;
    case 2:
      return 0;
    case 3:
      return 0;
    case 4:
      return 0;
    case 5:
      return "";
    default:
      return "Unknown"
  }
}

function isInteger(value) {
    return /^-{0,1}\d+$/.test(value);
}
function isDouble(value) {
    return /^-?\d+(?:[.,]\d*?)?$/.test(value);
}

function stringToType(str,type){
  switch(type){
    case 1:
      if(str == "true") return true;
      if(str == "false") return false;
      return null;
    case 2:
      if(!isInteger(str))
        return null;
      return parseInt(str);
    case 3:
      if(!isInteger(str))
        return null;
      return parseInt(str);
    case 4:
      if(!isDouble(str))
        return null;
      return Number.parseFloat(str);
    case 5:
      return str;
    default:
      return "Unknown"
  }
}

function loadCookie(){
  saved_enviroment = getCookie("enviroment");
  if(saved_enviroment == undefined){
    saved_enviroment = getDefaultEnviroment();
    setCookie("enviroment", saved_enviroment, 365);
  }

  console.log(saved_enviroment)
  keypair_list = saved_enviroment.discovery.keypair_list;
  event_list = saved_enviroment.discovery.event_list;
  telemetry_list = saved_enviroment.discovery.telemetry_list;
}

function keypairCheckboxChange(checkbox,keypair_name)
{
  saved_enviroment.discovery.keypair_list[keypair_name].enabled = checkbox.checked;
  setCookie("enviroment", saved_enviroment, 365);
  infoPanelChange();
  //console.log(keypair_list)
}

function keypairTextboxChange(textbox,keypair_name)
{
  saved_enviroment.discovery.keypair_list[keypair_name].alias = textbox.value;
  setCookie("enviroment", saved_enviroment, 365);
  infoPanelChange();
  //console.log(keypair_list)
}

function telemetryCheckboxChange(checkbox,telemetry_name)
{
  saved_enviroment.discovery.telemetry_list[telemetry_name].enabled = checkbox.checked;
  setCookie("enviroment", saved_enviroment, 365);
  infoPanelChange();
  //console.log(keypair_list)
}

function telemetryTextboxChange(textbox,telemetry_name)
{
  saved_enviroment.discovery.telemetry_list[telemetry_name].alias = textbox.value;
  setCookie("enviroment", saved_enviroment, 365);
  infoPanelChange();
  //console.log(keypair_list)
}

class Schema{
  constructor(schema){
    this.fields = {};
    this.createSchema(this.fields,schema);
  }

  createSchema(parent,schema){
    for (const schema_field of schema){
      var field = {
        type: schema_field.type,
        data: getTypeDefaults(schema_field.type),
        observers: []
      }

      if(schema_field.type == kMapValue){
        this.createSchema(field.data,schema_field.data);
      }
      
      parent[schema_field.name] = field;
    }
  }

  getJSONFirstField(firstField){
    console.log(firstField,this.fields);
    return this.getJSONInternal(this.fields[firstField]);
  }

  getJSONInternal(parent){
    console.log(parent)
    var schema = {t: parent.type, d: null};

    if(parent.type != kMapValue){
      schema.d = parent.data;
    }else{
      schema.d = {};
      for (var key in parent.data){
        schema.d[key] = this.getJSONInternal(parent.data[key]);
      }
      
    }

    return schema;
  }

  getPrintableSchema(){
    return this.printableSchemaInternal(this.fields)
  }

  printableSchemaInternal(parent){
    var string = '{'

    for(key in parent){
      string += key + ":"
      if(parent[key].type != kMapValue){
        string += parent[key].data
      }else{
        string += this.printableSchemaInternal(parent[key].data)
      }
      string+=','
    }
    string = string.substring(0, string.length - 1);

    string += '}'
    return string
  }

  isSimilar(schema){
    return this.isSimilarInternal(this.fields,schema.fields)
  }

  isSimilarInternal(parent,schema){
    for(key in parent){
      if(schema[key] == null)
        return false;

      if(parent[key].type != schema[key].type)
        return false;

      if(parent[key].type == kMapValue && this.isSimilarInternal(parent[key].data,schema[key].data) == false)
        return false;
    }

    for(key in schema){
      if(parent[key] == null)
        return false;
    }

    return true;
  }

  updateSchema(schema){
    this.updateSchemaInternal(this.fields,schema);
  }

  updateSchemaInternal(parent,schema){
    for (var fieldName in schema){
      var schemaField = schema[fieldName]
      //console.log(parent, fieldName)
      if(parent[fieldName].type != kMapValue){
        // if(typeof schemaField == 'number'){
        //   parent[fieldName].data = Math.round(schemaField * 100000) / 100000;
          
        // }else{
          parent[fieldName].data = schemaField;
        // }
        
      }else{
        this.updateSchemaInternal(parent[fieldName].data,schemaField);
      }

      for(var observer of parent[fieldName].observers)
      {
        observer.fnct(observer.data);
      }
    }
  }

  getField(path){
    var path_tokens = path.split("/")
    if(path_tokens.length==0)
      return null;

    var field = this.fields[path_tokens[0]];
    if(field == null)
      return null;

    for (var i=1; i<path_tokens.length;i++){
      field = field.data[path_tokens[i]];
      if(field == null)
        return null;
    }

    return field;
  }
}

class Telemetry{
  constructor(agentUuid,schema){
    this.agentUuid = agentUuid;
    this.schema = new Schema(schema);
  }

  updateTelemetry(schema){
    this.schema.updateSchema(schema);
  }

  getSchema(){
    return this.schema;
  }
}

class KeyPair{
  constructor(agentUuid,schema){
    this.agentUuid = agentUuid;
    this.schema = new Schema(schema);
  }

  updateKeyPair(schema){
    this.schema.updateSchema(schema);
  }

  getSchema(){
    return this.schema;
  }
}

class Events{
  constructor(agentUuid,schema){
    this.agentUuid = agentUuid;
    this.schema = new Schema(schema);
  }

  updateEvents(schema){
    this.schema.updateSchema(schema);
  }

  getSchema(){
    return this.schema;
  }
}

function processKeyPairDiscovery(json_keypairs){
  for(uuid in json_keypairs)
  {
    if(a_list[uuid].getKeypairPool() != null)
      continue;

    var keypairPool = new KeyPair(uuid,json_keypairs[uuid]);
    a_list[uuid].setKeypairPool(keypairPool);
    parameterConfiguration.registerAgent(a_list[uuid]);
  }
}

function processEventDiscovery(json_events){
  for(uuid in json_events)
  {
    if(a_list[uuid].getEventPool() != null)
      continue;

    var eventPool = new Events(uuid,json_events[uuid]);
    a_list[uuid].setEventPool(eventPool);
    eventGenerationPanel.registerAgent(a_list[uuid]);
  }

  // json_events.forEach(function(item){
  //   event_list = saved_enviroment.discovery.event_list;
  //   //Generate the options

  //   if(event_list[item.name]){
  //     return;
  //   }

  //   event = {
  //     name: item.name,
  //     parameters: {}
  //   };

  //   for(param in item.parameters){
  //     name = item.parameters[param].name
  //     event.parameters[name] = item.parameters[param].type;
  //   }

  //   generateEventDom(document.getElementById("event_trigger_panel"),event);
  //   event_list[item.name] = event;

  //   setCookie("enviroment", saved_enviroment, 365);
  //   //console.log(keypair_list)
  //   return event;
  // });
}


function processTelemetryDiscovery(json_telemetry){
  renewSubscriptions = false;
  for(uuid in json_telemetry)
  {
    if(a_list[uuid].getTelemetryPool() != null)
      continue;

    var telemetryPool = new Telemetry(uuid,json_telemetry[uuid]);
    a_list[uuid].setTelemetryPool(telemetryPool);
    monitorableObjectPool.registerNewObject(uuid,telemetryPool);
    a_list[uuid].addTarget();
    a_list[uuid].addMarkerObserver();
    renewSubscriptions = true;

  }

  if(renewSubscriptions){
    sendSubscriptions(null,null,null);
  }
}

function processDiscovery(json_discovery){
  processKeyPairDiscovery(json_discovery.keypairs);
  processEventDiscovery(json_discovery.events);
  processTelemetryDiscovery(json_discovery.telemetry);
}

function registerObserver(field,observerFunc,userData){
  field.observers.push({
    fnct: observerFunc,
    data: userData
  });
}

function fetchData(){
  keypair_list = saved_enviroment.discovery.keypair_list;
  keypair_fetch = []
  for( key in keypair_list)
  {
    keypair = keypair_list[key];

    if(keypair.enabled)
      keypair_fetch.push(key);
  }

  query = {
    getKeypair: pendingKeypair
  }
  pendingKeypair = {};

  if(pendingUpdate){
    query["discovery"] = 1;
    pendingUpdate = false;
  }

  if(pendingStatusUpdate){
    query["statusUpdate"] = 1;
    pendingStatusUpdate = false;
  }

  if(pendingEventUpdate){
    query["eventUpdate"] = eventNumber;
    pendingEventUpdate = false;
  }

  updateEventMonitor(query)
}

function initCommunicationLibDataFetch(){
  loadCookie();

  //setInterval(fetchData, 100);

  updateEventMonitor();
}

function infoPanelChange(){
  keypair_list = saved_enviroment.discovery.keypair_list;
  for (agent_name in agent_list){
    agent = agent_list[agent_name];

    for (param_name in agent.parameters){
      //console.log(param_name)
      paramName = (keypair_list[param_name].alias.length == 0 ? keypair_list[param_name].name : keypair_list[param_name].alias)
      agent.vis.paramPtr[param_name].name.nodeValue = paramName+":";
      if(keypair_list[param_name].enabled){
        agent.vis.paramPtr[param_name].dispElement.style.display = 'block';
      }else{
       agent.vis.paramPtr[param_name].dispElement.style.display = 'none';
      }
    }
      
  }
  //console.log(agent_list)
    
}

var send_req = true;
var lastNotification = -2;
function updateEventMonitor(q){
  if(!send_req)
    return;

  send_req = false;

  xmlhttp = new XMLHttpRequest();
  // async: true (asynchronous) or false (synchronous)
  // xmlhttp.open("POST", "getAgentData.php", true);
  xmlhttp.open("POST", "/cgi-bin/getAgentData.cgi", true);
  xmlhttp.setRequestHeader('Content-Type', 'application/json');
  //console.log(q)
  xmlhttp.onreadystatechange = function() {
    //if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
    if(xmlhttp.readyState == XMLHttpRequest.DONE){
      try {
        // console.log(xmlhttp.responseText);
        json_reply = JSON.parse(xmlhttp.responseText);
        // console.log(json_reply);

        if(json_reply["statusUpdate"] != null){
          processStatusUpdate(json_reply.statusUpdate);
          statusNumber = json_reply["statusNum"];
        }

        if(json_reply["eventUpdate"] != null){
          processEventUpdate(json_reply.eventUpdate);
          eventNumber = json_reply["eventNum"];
        }

        if(json_reply["discovery"] != null){
          processDiscovery(json_reply.discovery);
          updateNumber = json_reply["updateNum"];
        }

        processSetKey(json_reply.response.setKeypair);
        processTriggerEvent(json_reply.response.triggerEvent);
        processKeypair(json_reply.response.getKeypair);
        processTelemetry(json_reply.telemetry);
        processNotifications(json_reply.notifications,json_reply.currNotificationId);


        if(json_reply["updateNum"] != updateNumber){
          pendingUpdate = true;
        }

        if(json_reply["statusNum"] != statusNumber){
          pendingStatusUpdate = true;
        }

        if(json_reply["eventNum"] != eventNumber){
          pendingEventUpdate = true;
        }
      }
      catch(err) {
          console.log(err);
      }

      setTimeout(fetchData, 200);
    }

    send_req = true;
  }

  if(q == null){
    q = {};
  }

  if(pendingSubscriptions != null){
    q.subscribe = pendingSubscriptions;
    pendingSubscriptions = null;
  }

  if(lastNotification != -2){
    q["lastNotificationId"] = lastNotification;
  }

  if(event_queue.length > 0){
    var temp = event_queue.pop();
    q["triggerEvent"] = temp;
  }

  if(setkey_queue.length > 0){
    var temp = setkey_queue.pop();
    q["setKeypair"] = temp;
  }

  var json_str = JSON.stringify(q)
  console.log(json_str);
  xmlhttp.send(json_str);
}

function processSetKey(json_response){
  if(json_response == null)
    return;

  console.log(json_response);
  parameterConfiguration.processSetKey(json_response);

  var action = bottomPanel.getAction(json_response.uid);
  if(action == null)
    return;

  for(entry of json_response.agents){
    action.updateTargetStatus(entry.uid,entry.status)
  }
}

function processNotifications(json_response,lastId){
  lastNotification = lastId;

  if(json_response == null)
    return;

  if(json_response.length > 0)
    console.log(json_response);
}


function processTriggerEvent(json_response){
  if(json_response == null)
    return;

  var action = bottomPanel.getAction(json_response.uid);
  if(action == null)
    return;

  for(entry of json_response.agents){
    action.updateTargetStatus(entry.uid,entry.status)
  }
}

function processKeypair(json_keypair){
  if(json_keypair == null)
    return

  for(uuid in json_keypair)
  {
    if(a_list[uuid] == null || a_list[uuid].getKeypairPool() == null)
      continue;

    a_list[uuid].getKeypairPool().updateKeyPair(json_keypair[uuid])
  }
}

function getEventParameter(event, parameter)
{
  var param_path = parameter.split('/');
  var curr_loc = event.p;

  for(var path_token of param_path)
  {
    if(curr_loc[path_token] == null){
      return null;
    }

    curr_loc = curr_loc[path_token];
  }

  return curr_loc;
}

function parameterExists(event, parameter)
{
  var param_path = parameter.split('/');
  var curr_loc = event.p;

  for(var path_token of param_path)
  {
    if(curr_loc[path_token] == null){
      console.log("Parameter: "+parameter+" could not be found at event "+event.n);
      return false;
    }

    curr_loc = curr_loc[path_token];
  }

  return true;
}

function drawableEventIsValid(event)
{
  if(!parameterExists(event,drawableEvents[event.n].lat))
    return false;

  if(!parameterExists(event,drawableEvents[event.n].lng))
    return false;

  return true;
}

function processEventUpdate(json_event){
  // console.log(json_event);
  for(var entry of json_event){
    if(entry.n in drawableEvents)
    {
      if("eventPool" in window){
        eventPool.addEventToMap(entry);
      }
    }

    if(!ignoredEvents.includes(entry.n))
    {
      if("eventMonitor" in window){
        eventMonitor.registerMonitoredEvent(entry);
      }
    }
  }
  
}

function processStatusUpdate(json_status)
{
  for(var uuid in json_status){
    var agentInfo = json_status[uuid];

    if(a_list[uuid] == null){


      var newAgent = new Agent(uuid,agentInfo.name,agentInfo.type);
      newAgent.setIsOnline(agentInfo.online);

      a_list[uuid] = newAgent;
    }else{
      a_list[uuid].setIsOnline(agentInfo.online);
    }
  }
}

function processTelemetry(json_telemetry)
{
  if(json_telemetry == null)
    return

  for(uuid in json_telemetry)
  {
    if(a_list[uuid] == null || a_list[uuid].getTelemetryPool() == null)
      continue;

    a_list[uuid].getTelemetryPool().updateTelemetry(json_telemetry[uuid])
  }
}

function setCookie(cname, cvalue, exdays) {
  var d = new Date();
  d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
  var expires = "expires="+d.toUTCString();
  document.cookie = cname + "=" + JSON.stringify(cvalue) + ";" + expires + ";path=/";
}

function getCookie(cname) {
  var name = cname + "=";
  var ca = document.cookie.split(';');
  for(var i = 0; i < ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return JSON.parse(c.substring(name.length, c.length));
    }
  }
}

class LayerManager{
  constructor(controlDivID, engine){
    this.controlDiv = document.getElementById(controlDivID);
    this.engine = engine;
    this.layers = {}
    this.layerStatus = {}
  }

  registerLayer(name, layer, enabled){
    this.layers[name] = layer;
    this.layerStatus[name] = enabled;

    //Create control button for layer
    this.addDOMLayerButton(name, enabled);
    if(enabled){
      layer.getLayer().addTo(engine.map);
    }
  }

  toggleLayer(layerName, enabled){
    if(enabled)
      this.layers[layerName].getLayer().addTo(engine.map);
    else
      this.layers[layerName].getLayer().remove();

    this.layers[layerName].toggleHandler(enabled);
    this.layerStatus[layerName] = enabled;
  }

  addDOMLayerButton(layerName, enabled){
    var inputTag = document.createElement('input');
    inputTag.setAttribute('type','checkbox');
    if(enabled){
      var checked = document.createAttribute('checked');
      inputTag.setAttributeNode(checked);
    }

    inputTag.setAttribute('id',layerName+"-layer");
    inputTag.setAttribute('onclick',"toggleLayer(this,\""+layerName+"\");");

    var labelTag = document.createElement('label');
    labelTag.setAttribute('for',layerName+"-layer");
    labelTag.innerHTML = layerName;

    var ilTag = document.createElement('li');
    ilTag.appendChild(inputTag);
    ilTag.appendChild(labelTag);

    this.controlDiv.appendChild(ilTag);
  }
}

class SelectionHelper{
  constructor(color){
    this.selectionPoints = [];
    this.selectionPolygon = L.polygon([],{color: color});

    this.engine = null;
  }

  addSelectionPoint(latlng){
    this.selectionPoints.push(latlng);
    this.selectionPolygon.setLatLngs(this.selectionPoints);
  }

  clearSelectionPoints(){
    this.selectionPoints = [];
    this.selectionPolygon.setLatLngs(this.selectionPoints);
  }

  registerEngine(engine){
    this.engine = engine;
    this.selectionPolygon.addTo(engine.map)
  }

  getSelectionPoints(){
    return this.selectionPoints;
  }
}

class Engine{
  constructor(mapDivID,globalObjectPool,selectionColor){
    this.map = L.map(mapDivID,{
      fadeAnimation: true,
      zoomAnimation: true
    });
    loadCookie();
    this.map.setView([saved_enviroment.mapView.lat, saved_enviroment.mapView.lng],saved_enviroment.mapView.zoomLevel)
    // this.map.on('click', this.clickHandler.bind(this));
    this.map.zoomControl.remove();
    this.globalPool = new GlobalObjectPool();
    this.interationMode = 0; //0: nothing, 1: selection, 2 area of operation
    this.selectionHelper = new SelectionHelper(selectionColor);
    this.selectionHelper.registerEngine(this);
    this.clickMarker = null;

    this.focusEnabled = false;

    this.map.on("moveend", function () {
      saved_enviroment.mapView.lat = this.getCenter().lat;
      saved_enviroment.mapView.lng = this.getCenter().lng;
      saved_enviroment.mapView.zoomLevel = this.getZoom();
      setCookie("enviroment", saved_enviroment, 365);
      
    });

    this.focusEvents = {};
    this.focusEventIndex = 0;
  }

  setInterationMode(mode){
    this.interationMode = mode;
  }

  getInterationMode(){
    return this.interationMode;
  }

  clickHandler(e){
    if(this.clickMarker == null){
      this.clickMarker = L.circle([e.latlng.lat, e.latlng.lng], {color: 'red',fillColor: '#f03',fillOpacity: 1.0,radius: 10})
      this.clickMarker.addTo(this.map);
    }else{
      this.clickMarker.setLatLng(e.latlng);
    }

    switch(this.interationMode){
      case 0:
        break;
      case 1:
        this.selectionHelper.addSelectionPoint(e.latlng);
        break;
    }
  }

  getSelectedObjects(){
    var selectedObjects = this.globalPool.getSelectedObjects(this.selectionHelper.getSelectionPoints());
    this.selectionHelper.clearSelectionPoints();
    return selectedObjects;
  }

  updateView(){
    var maxLat = -90;
    var minLat = 90;
    var maxLng = -90;
    var minLng = 90;

    var noEntries = true;

    for(var key in this.focusEvents){
      var entry = this.focusEvents[key];
      if(entry == undefined)
        continue;
      maxLat = Math.max(maxLat,entry.lat);
      minLat = Math.min(minLat,entry.lat);
      maxLng = Math.max(maxLng,entry.lng);
      minLng = Math.min(minLng,entry.lng);

      noEntries = false;
    }

    maxLat += autoFocusLayerParam.focusMargin;
    maxLng += autoFocusLayerParam.focusMargin;
    minLat -= autoFocusLayerParam.focusMargin;
    minLng -= autoFocusLayerParam.focusMargin;

    if(noEntries)
      return;
    this.map.fitBounds([[minLat,minLng],[maxLat,maxLng]],{
      pan: {
          animate: true,
          duration: 1
      },
      zoom: {
          animate: true,
          duration: 2
      }
    });

  }

  addFocusEvent(lat,lng,duration){

    if(!this.focusEnabled){
      return;
    }

    var index = this.focusEventIndex++;
    this.focusEvents[index] = {
      lat : lat,
      lng : lng,
    };

    if(duration > 0){
      setTimeout(this.removeFocusEvent,duration,index,this.focusEvents);
    }

    this.updateView();

    return index;
  }

  removeFocusEvent(id,list){
    list[id] = undefined;
    engine.updateView();
  }
}

class DataPool{
  constructor(parent){
    this.data = {};
    this.dataUpdateHandlers = [];
    this.parent = parent;
  }

  addDataUpdateHandler(handler){
    this.dataUpdateHandlers.push(handler);
  }

  updateData(dataName,dataValue){

    this.data[dataName] = dataValue;
    var pool = this;
    var p = this.parent;

    this.dataUpdateHandlers.forEach(function(handler){
      handler(p,pool,dataName);
    });
  }
}

class MyObject{
  constructor(uid, type, defaultIcon=null, selectedIcon=null){
    this.uid = uid;

    this.marker = null;
    // this.defaultIcon = defaultIcon;
    // this.selectedIcon = selectedIcon;
    this.selectionFnc = null;
    this.type = type;

    this.icons = {};
    this.iconState = null;

    if(agentTypes[type] != null){
      for(var iconState in agentTypes[type].iconState){
        var iconStateTmp = agentTypes[type].iconState[iconState];
        console.log("Creating icons for state", iconState);
        var defIcon = new L.NumberedDivIcon({iconUrl: iconStateTmp.defaultIcon.src, iconSize: iconStateTmp.defaultIcon.size});
        defIcon.options.number = this.indexNumber;
        defIcon.parent = this;

        var selIcon = new L.NumberedDivIcon({iconUrl: iconStateTmp.selectedIcon.src, iconSize: iconStateTmp.selectedIcon.size});
        selIcon.options.number = this.indexNumber;
        selIcon.parent = this;

        this.icons[iconState] = {
          defaultIcon: defIcon,
          selectedIcon: selIcon
        };
      }
    }

    console.log(this.icons)



    // if(defaultIcon ==null && itemTypes[type] != null){
    //   defaultIcon = new L.NumberedDivIcon({iconUrl: itemTypes[type].defaultIcon, iconSize: [40, 40]});
    //   defaultIcon.options.number = this.indexNumber;
    //   defaultIcon.parent = this;
    //   this.setDefaultIcon(defaultIcon);
    // }

    // if(selectedIcon ==null && itemTypes[type] != null){
    //   selectedIcon = new L.NumberedDivIcon({iconUrl: itemTypes[type].selectedIcon, iconSize: [40, 40]});
    //   selectedIcon.options.number = this.indexNumber;
    //   selectedIcon.parent = this;
    //   this.setSelectedIcon(selectedIcon);
    // }

    this.selected = false;
  }

  getMarker(){
    return this.marker;
  }

  setIconState(newState){
    this.iconState = newState;
  }

  getIcon(requestedState=null){
    var state;
    if(requestedState == null)
      state = this.iconState;

    if(state == null){
      state = 'default';
    }

    if(this.icons[state] == null)
      return null;

    if(this.selected)
      return this.icons[state].selectedIcon;
    else
      return this.icons[state].defaultIcon;
  }

  isSelected(value){
    this.selected = value;
    if(this.marker != null){
      this.marker.setIcon(this.getIcon());
    }
  }

  getUUID(){
    return this.uid;
  }
}

class Item extends MyObject{
  constructor(uid,type,parent,defaultIcon=null,selectedIcon=null){
    super(uid,type,defaultIcon,selectedIcon);

    this.parent = parent;
    // this.indexNumber = parent.indexNumber;
    this.defaultIcon.options.number = uid;
    this.selectedIcon.options.number = uid;
    this.locationObservers = [];

    this.lat = null;
    this.lng = null;
    this.type = type;

  }

  registerLocationObserver(observerFunc,userData){
    this.locationObservers.push({
      fnct: observerFunc,
      data: userData
    });
  }

  setLocation(lng, lat){
    this.lat = lat;
    this.lng = lng;

    for(var observer of this.locationObservers)
    {
      observer.fnct(observer.data);
    }
  }
}

class AgentObject extends MyObject{
  constructor(uid,type,defaultIcon=null,selectedIcon=null){
    super(uid,type,defaultIcon,selectedIcon);

    this.telemetryData = new DataPool(this);
    this.keypairData = new DataPool(this);
  }

  getTelemetryPool(){
    return this.telemetryData;
  }

  getKeypairPool(){
    return this.keypairData;
  }
}

class Agent extends AgentObject{
  constructor(uid,name,type,defaultIcon=null,selectedIcon=null){
    super(uid,type,defaultIcon,selectedIcon);
    this.telemetryPool = null;
    this.keypairPool = null;
    this.eventPool = null;
    this.name = name;
    this.online = true;
    this.onlineObservers = [];
    this.indexNumber = Agent.indexNum++;

    for (var iconState in this.icons){
      this.icons[iconState].defaultIcon.options.number = this.name;
      this.icons[iconState].selectedIcon.options.number = this.name;
    }

    // if(defaultIcon ==null && agentTypes[type] != null){
    //   var defaultIcon = new L.NumberedDivIcon({iconUrl: agentTypes[type].defaultIcon, iconSize: [40, 40]});
    //   defaultIcon.options.number = this.name;
    //   defaultIcon.parent = this;
    //   this.setDefaultIcon(defaultIcon);
      
    // }

    // if(selectedIcon ==null && agentTypes[type] != null){
    //   var selectedIcon = new L.NumberedDivIcon({iconUrl: agentTypes[type].selectedIcon, iconSize: [40, 40]});
    //   selectedIcon.options.number = this.name;
    //   selectedIcon.parent = this;
    //   this.setSelectedIcon(selectedIcon);
    // }
  }

  //Test code
  addTarget(){

    var fieldId = a_list[this.uid].telemetryPool.getSchema().getField("target/ids");
    var fieldType = a_list[this.uid].telemetryPool.getSchema().getField("target/types");
    var fieldLng = a_list[this.uid].telemetryPool.getSchema().getField("target/longitudes");
    var fieldLat = a_list[this.uid].telemetryPool.getSchema().getField("target/latitudes");

    if(fieldId != null && fieldType != null && fieldLng != null && fieldLat != null)
    {
      
      var data = {fieldId: fieldId, fieldType: fieldType, fieldLng: fieldLng, fieldLat: fieldLat, parent: this};
      var callback = function(userData){
        if(userData.fieldId.data != "" ){
          for(var i=0;i<userData.fieldId.data.length;i++){
            if(i_list[userData.fieldId.data[i]] == null){
              var newTarget = new Item(userData.fieldId.data[i],userData.fieldType.data[i], userData.parent);
              console.log("Creating Item", newTarget)
              i_list[userData.fieldId.data[i]] = newTarget;
              itemPool.registerObject(newTarget);
            }else{
              var target = i_list[userData.fieldId.data[i]];
              target.setLocation(userData.fieldLng.data[i], userData.fieldLat.data[i]);
            }
          }

        }

        // if(i_list[userData.fieldId.data] == null){
        //   var newTarget = new Item(userData.fieldId.data,userData.fieldType.data, userData.parent);
        //   i_list[userData.fieldId.data] = newTarget;
        //   itemPool.registerObject(newTarget);
        // }

      };
      registerObserver(fieldLng,callback,data);
      registerObserver(fieldLat,callback,data);
    }
  }

  addMarkerObserver(){
    var fieldIcon = a_list[this.uid].telemetryPool.getSchema().getField("icon_state");
    if(fieldIcon != null){
      var data = {fieldIcon: fieldIcon, parent: this};

      var callback = function(userData){
        if(userData.fieldIcon.data != "" ){
          userData.parent.iconState = userData.fieldIcon.data;

          if(userData.parent.marker != null){
            userData.parent.marker.setIcon(userData.parent.getIcon());
          }
        }
      };

      registerObserver(fieldIcon,callback,data);
    }
  }
  //End Test code

  getType(){
    return this.type;
  }

  getName(){
    return this.name;
  }

  setIsOnline(value){
    this.online = value;

    for(var observer of this.onlineObservers)
    {
      observer.fnct(observer.data);
    }

  }

  isOnline(){
    return this.online;
  }

  setTelemetryPool(telemetryPool){
    this.telemetryPool = telemetryPool;
  }

  getTelemetryPool(){
    return this.telemetryPool;
  }

  setKeypairPool(keypairPool){
    this.keypairPool = keypairPool;
  }

  getKeypairPool(){
    return this.keypairPool;
  }

  getIndexNumber(){
    return this.indexNumber;
  }

  setEventPool(eventPool){
    this.eventPool = eventPool;
  }

  getEventPool(){
    return this.eventPool;
  }

}
Agent.indexNum = 1;

class Cart extends Item{
  constructor(uid,type,parent,defaultIcon=null,selectedIcon=null){
    super(uid,parent,defaultIcon,selectedIcon)
  }
}

class RescueTarget extends Item{
  constructor(uid,type,parent,defaultIcon=null,selectedIcon=null){
    super(uid,parent,defaultIcon,selectedIcon)
  }
}

class DeliverZone extends Item{
  constructor(uid,type,parent,defaultIcon=null,selectedIcon=null){
    super(uid,parent,defaultIcon,selectedIcon)
  }
}

class GlobalObjectPool{
  constructor(){
    this.pools = [];
  }

  registerPool(pool){
    this.pools.push(pool);
  }

  getSelectedObjects(selection_polygon){
    var selectedObjects = [];
    for (var pool of this.pools){
      for(var objectName in pool.objs){
        var object = pool.objs[objectName];
        if(object.selectionFnc == null)
          continue;

        if(object.selectionFnc(selection_polygon)){
          selectedObjects.push(object)
        }
      }
    }

    return selectedObjects;
  }
}

class Layer{
  constructor(){
    this.defLayer = L.layerGroup();
  }
  /* Handler called when the layer is activated or deactivated */
  toggleHandler(enabled){
  }

  /* Apends the layer group to the visualization, if any */
  getLayer(){
    return this.defLayer;
  }
}

class LayerItemPool extends Layer{
  constructor(engine=null){
    super();
    this.objs = {};
    this.layerGroup = L.layerGroup();
    if(engine != null)
      engine.globalPool.registerPool(this);
  }

  registerObject(object,defaultRenderHandler=true,defaultSelectionHandler=true){
    if(defaultRenderHandler){

      // if(object.lng != null && object.lat != null)
      // {
      var data = {item: object, layer: this.layerGroup};
      var callback = function(userData){
        var item = userData.item;
        if(item.marker == null){
          item.marker = L.marker([userData.item.lat, userData.item.lng], {icon: item.getIcon()});
          item.marker.on('click', listSelection.mapSelectionCallback);
          userData.layer.addLayer(item.marker);
        }else{
          item.marker.setLatLng([userData.item.lat, userData.item.lng]);
        }
      };

      console.log("target",object)
      object.registerLocationObserver(callback,data);
      // }
    }

    if(defaultSelectionHandler){
      object.selectionFnc = function(poly){
        var data = object.getTelemetryPool().data;
        if(data["lat"] == null || data["lng"] == null ){
          return false;
        }

        var loc = {lat: data.lat, lng: data.lng};
        return isPointInsidePolygon(loc,poly);
      }
    }
  }

  getLayer(){
    return this.layerGroup;
  }
}

class LayerObjectPool extends Layer{
  constructor(engine=null){
    super();
    this.objs = {};
    this.layerGroup = L.layerGroup();
    if(engine != null)
      engine.globalPool.registerPool(this);
  }

  registerObject(object,objectName,defaultRenderHandler=true,defaultSelectionHandler=true){
    this.objs[objectName] = object;

    if(defaultRenderHandler){

      var fieldLng = a_list[objectName].telemetryPool.getSchema().getField(agentLayerParam.agentLngTopic);
      var fieldLat = a_list[objectName].telemetryPool.getSchema().getField(agentLayerParam.agentLatTopic);

      console.log(object, objectName,fieldLng ,fieldLat)

      if(fieldLng != null && fieldLat != null)
      {
        var data = {lat: fieldLat, lng: fieldLng, uuid: objectName, layer: this.layerGroup};
        var callback = function(userData){
          var agent = a_list[userData.uuid];
          if(agent.marker == null){
            agent.marker = L.marker([userData.lat.data, userData.lng.data], {icon: agent.getIcon()});
            agent.marker.on('click', listSelection.mapSelectionCallback);
            userData.layer.addLayer(agent.marker);
          }else{
            agent.marker.setLatLng([userData.lat.data, userData.lng.data]);
          }
        };

        registerObserver(fieldLng,callback,data);
        registerObserver(fieldLat,callback,data);
      }
    }

    if(defaultSelectionHandler){
      object.selectionFnc = function(poly){
        var data = object.getTelemetryPool().data;
        if(data["lat"] == null || data["lng"] == null ){
          return false;
        }

        var loc = {lat: data.lat, lng: data.lng};
        return isPointInsidePolygon(loc,poly);
      }
    }
  }

  getLayer(){
    return this.layerGroup;
  }
}

class LayerAgentPool extends LayerObjectPool{
  constructor(engine){
    super(engine);
  }
  registerObject(agentName,newAgent){
    super.registerObject(newAgent,agentName);
  }
}

class LayerCartPool extends LayerObjectPool{
  registerObject(agentName,newAgent){
    super.registerObject(newAgent,agentName);
  }
}

class LayerSetpointPool extends Layer{
  constructor(engine=null){
    super();
    this.objs = {};
    this.layerGroup = L.layerGroup();
    if(engine != null)
      engine.globalPool.registerPool(this);
  }

  removeItem(uuid){
    this.layerGroup.removeLayer(this.objs[uuid]);
  }

  registerObject(uuid,agentObj){
    var targetLng = a_list[uuid].telemetryPool.getSchema().getField(waypointLayerParam.waypointLngTopic);
    var targetLat = a_list[uuid].telemetryPool.getSchema().getField(waypointLayerParam.waypointLatTopic);

    var agentLng = a_list[uuid].telemetryPool.getSchema().getField(waypointLayerParam.locationLngTopic);
    var agentLat = a_list[uuid].telemetryPool.getSchema().getField(waypointLayerParam.locationLatTopic);

    var line = new L.Polyline([], {
      color: waypointLayerParam.color,
      weight: waypointLayerParam.weight,
      opacity: waypointLayerParam.opacity,
      smoothFactor: waypointLayerParam.smoothFactor
    });
    this.layerGroup.addLayer(line);
    this.objs[uuid] = line;

    if(agentLat != null && agentLng != null && targetLat != null && targetLng != null)
    {
      var data = {alat: agentLat, alng: agentLng, tlat: targetLat, tlng: targetLng, uuid: uuid, line: line};
      var callback = function(userData){
        var pointA = new L.LatLng(userData.alat.data, userData.alng.data);
        var pointB = new L.LatLng(userData.tlat.data, userData.tlng.data);
        userData.line.setLatLngs([pointA,pointB]);
      };

      registerObserver(targetLng,callback,data);
      registerObserver(targetLat,callback,data);
      registerObserver(agentLng,callback,data);
      registerObserver(agentLat,callback,data);
    }
  }

  getLayer(){
    return this.layerGroup;
  }
}

function addLimitMarker(e){
  operationArea.addPoint(e.latlng);
}

class OperationLimit extends Layer{
  constructor(maplayer){
    super();
    this.outer_ring = [[90, -180],[90,180],[-90,180],[-90,-180]];
    this.inner_ring = [];
    this.engine = engine;
    this.layerGroup = L.layerGroup();
    this.points = [];
    this.points_submited = [];

    this.layerName = "Operation Area";
    this.previousLayerState = false;
    this.polygon = L.polygon(this.outer_ring,{color: operationAreaLayerParam.color,opacity: 0.0,fillOpacity: operationAreaLayerParam.opacity});
    this.polygon.setLatLngs([this.outer_ring,[]]);
  }

  addPoint(latlng){
    // this.inner_ring.push([lat, lng]);
    var marker = new L.marker(latlng).addTo(this.layerGroup);
    marker.dragging.enable();
    marker.on('drag', function(e){
      operationArea.recalulatePolygon();
    });

    marker.on('click', function(e){
      operationArea.removePoint(marker);
    });

    this.points.push(marker);
    this.recalulatePolygon();
    // this.layer.setLatLngs([this.outer_ring,this.inner_ring]);
  }

  getLayer(){
    return this.layerGroup;
  }

  removePoint(point){
    let index = this.points.indexOf(point);
    if(index !== -1) {
      this.points.splice(index, 1);
    }

    this.layerGroup.removeLayer(point);
    this.recalulatePolygon();
  }

  startEditing(){
    console.log("Editing Operation Area");
    this.engine.map.on('click', addLimitMarker);

    this.previousLayerState = layerManager.layerStatus[this.layerName];
    console.log(this.previousLayerState)
    layerManager.toggleLayer(this.layerName,true);

    for(var point of this.points_submited){
      this.addPoint(point);
    }
  }

  stopEditing(submit=false){
    if(submit){
      this.points_submited = [];
      var latitudes = [];
      var longitudes = [];
      for(var marker of this.points){
        console.log(marker.getLatLng())
        this.points_submited.push(marker.getLatLng());
        longitudes.push(marker.getLatLng().lng)
        latitudes.push(marker.getLatLng().lat)
      }

      var parameters = {
        "t" : 0,
        "d" : {
          "area_x" : {"d": longitudes, "t": 14},
          "area_y" : {"d": latitudes, "t": 14}
        }
      }

      //{"latitudes" : [latitudes, 14], "longitudes" : [longitudes, 14]};
      sendEvent(operationAreaLayerParam.eventName,parameters,[]);
    }

    this.points = [];

    this.layerGroup.clearLayers();
    this.polygon.setLatLngs([this.outer_ring,this.points_submited]);
    this.polygon.addTo(this.layerGroup);

    layerManager.toggleLayer(this.layerName,this.previousLayerState);


    this.engine.map.off('click', addLimitMarker);
  }

  recalulatePolygon(){
    var polygonPoints = [];
    for(var marker of this.points){
      polygonPoints.push(marker.getLatLng());
    }
    this.polygon.setLatLngs([this.outer_ring,polygonPoints]);
    this.polygon.addTo(this.layerGroup);
  }

  clear(){
    this.layerGroup.clearLayers();
    this.points = [];
  }
}

class LayerHomePool extends Layer{
  constructor(engine=null){
    super();
    this.objs = {};
    this.layerGroup = L.layerGroup();
    if(engine != null)
      engine.globalPool.registerPool(this);
  }

  removeItem(uuid){
    this.layerGroup.removeLayer(this.objs[uuid]);
  }

  registerObject(uuid,agentObj){
    var homeLng = a_list[uuid].telemetryPool.getSchema().getField(homeLayerParam.homeLngTopic);
    var homeLat = a_list[uuid].telemetryPool.getSchema().getField(homeLayerParam.homeLatTopic);

    // var line = new L.Polyline([], {
    //   color: 'blue',
    //   weight: 2,
    //   opacity: 0.5,
    //   smoothFactor: 1
    // });
    // this.layerGroup.addLayer(line);
    // this.objs[uuid] = line;

    if(homeLat != null && homeLng != null && agentTypes[a_list[uuid].getType()] != null)
    {
      var data = {lat: homeLat, lng: homeLng, uuid: uuid, icon: null, layer: this.layerGroup, pool: this.objs};
      var callback = function(userData){
        if(userData.icon == null){
          var homeIcon = new L.NumberedDivIcon({iconUrl: agentTypes[a_list[uuid].getType()].homeIcon, iconSize: [40, 40]});
          homeIcon.options.number = a_list[uuid].getName();
          homeIcon.parent = a_list[uuid];



          userData.icon = L.marker([userData.lat.data, userData.lng.data], {icon: homeIcon});;
          userData.layer.addLayer(userData.icon);
          userData.pool[uuid] = userData.icon;
        }else{
          userData.icon.setLatLng([userData.lat.data, userData.lng.data]);
        }
      };

      registerObserver(homeLng,callback,data);
      registerObserver(homeLat,callback,data);
    }
  }

  getLayer(){
    return this.layerGroup;
  }
}

class LeafletEventPoint{
  constructor(json_event){
    this.source = json_event.s;
    this.eventName = json_event.n;
    this.eventIndex = json_event.i;
    this.latitude = getEventParameter(json_event,drawableEvents[this.eventName].lat);
    this.longitude = getEventParameter(json_event,drawableEvents[this.eventName].lng);

    var iconUrl = drawableEvents[this.eventName].icon;
    //this.icon = new L.NumberedDivIcon({iconUrl: iconUrl, iconSize: drawableEvents[this.eventName].icon_size});
    this.icon = new L.Icon({iconUrl: iconUrl, iconSize: drawableEvents[this.eventName].icon_size});
    //this.icon.options.number = a_list[json_event.s].getName();
    this.marker = L.marker([this.latitude, this.longitude], {icon: this.icon});

    this.duration = drawableEvents[this.eventName].duration;

    engine.addFocusEvent(this.latitude,this.longitude,this.duration);

  }

  getIcon(){
    return this.icon;
  }

  getMarker(){
    return this.marker;
  }

  getIndex(){
    return this.eventIndex;
  }
}

class LayerEventPool extends Layer{
  constructor(engine=null){
    super();
    this.objs = {};
    this.layerGroup = L.layerGroup();
    if(engine != null)
      engine.globalPool.registerPool(this);
  }

  removeItem(index){
    this.layerGroup.removeLayer(this.objs[index]);
  }

  addEventToMap(json_event){
    if (json_event.p == null || !drawableEventIsValid(json_event)){
      console.log("Invalid Event")
      return false;
    }


    var eventObject = new LeafletEventPoint(json_event);
    this.registerObject(eventObject);
  }

  timerCallback(layerGroup, marker){
    layerGroup.removeLayer(marker);
  }

  registerObject(eventObj){
    this.objs[eventObj.getIndex()] = eventObj;
    this.layerGroup.addLayer(eventObj.getMarker());

    if(eventObj.duration != -1){
      setTimeout(this.timerCallback,eventObj.duration,this.layerGroup,eventObj.marker);
    }
  }

  getLayer(){
    return this.layerGroup;
  }
}

class LayerMap extends Layer{
  constructor(){
    super();
    this.map = L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
      maxZoom: 25,
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
        '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
        'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
      id: 'mapbox.streets',
      zoomControl: false
    });
  }
  getLayer(){
    return this.map;
  }
}

class LayerFactoryImage extends Layer{
  constructor(){
    super();
    this.layerGroup = L.layerGroup();
  }

  init(){
    for(var factoryName in factoryImageLayerParam.factories){
      console.log(factoryName);
      var factory = factoryImageLayerParam.factories[factoryName];
      L.imageOverlay(factory.imageUrl, factory.imageBounds).addTo(this.layerGroup);
      // L.imageOverlay(factory.imageUrl, factory.imageBounds).bringToFront();
    }
  }

  getLayer(){
    return this.layerGroup;
  }
}

class LayerFactoryFloor extends Layer{
  constructor(){
    super();
    this.floor = omnivore.kml(factoryFloorLayerParam.kml_file);
  }
  getLayer(){
    return this.floor;
  }
}

class LayerAutoFocus extends Layer{
  constructor(engine){
    super();
    this.engine = engine;
  }

  toggleHandler(enabled){
    this.engine.focusEnabled = enabled;
  }
}

class LayerCartObject{
  constructor(name, icon){
    this.name = name;
    this.icon = icon;
  }
}

function newCartLocationEvent(cartName, cartLocation){

  var parameters = {
    "t" : 0,
    "d" : {
      "name" : {"d": cartName, "t": 5},
      "x" : {"d": cartLocation.lng, "t": 4},
      "y" : {"d": cartLocation.lat, "t": 4}
    }
  }

  sendEvent(cartLayerParam.eventName,parameters,[]);
}

class LayerCarts extends Layer{
  constructor(){
    super();

    this.carts = [];

    for (var cartName in cartLayerParam.carts){
      this.registerObject(cartName, cartLayerParam.carts[cartName]);
    }
  }

  registerObject(cartName,cartInfo){
    var cartIcon = new L.NumberedDivIcon({iconUrl: cartInfo.imageUrl, iconSize: [40, 40]});
    cartIcon.options.number = cartName;

    var cartMarker = L.marker(cartInfo.location, {icon: cartIcon, draggable: 'true'});

   cartMarker.on('dragend', function(event) {
      newCartLocationEvent(cartMarker.parent.name, cartMarker.getLatLng())
    });

    this.getLayer().addLayer(cartMarker);

    var cartObject = new LayerCartObject(cartName, cartMarker)
    this.carts[cartName] = cartObject;
    cartMarker.parent = cartObject;
  }
}


test_poly = [
  {lat: 90, lng: -180},
  {lat: 90, lng: 180},
  {lat: -90, lng: 180},
  {lat: -90, lng: -180}
]

if(document.getElementById("mapid") != null){
  engine = new Engine("mapid");
  console.log(engine)
  layerManager = new LayerManager("layer-control",engine);

  //Area of operations

  /*-------------------- Preparing Layers -------------------- */
  //Creating an Object Pool for Agents
  mapLayer = new LayerMap();
  operationArea = new OperationLimit(mapLayer);
  factoryLayer = new LayerFactoryFloor();
  agentPool = new LayerAgentPool(engine);
  //agentPool.registerObject(agent1.uid,agent1);
  eventPool = new LayerEventPool();
  //Creating an Object Pool for Carts
  cartPool = new LayerCartPool();
  //cartPool.registerObject("234",cart1);
  setpointPool = new LayerSetpointPool();
  homePool = new LayerHomePool();
  itemPool = new LayerItemPool();
  autoFocusLayer = new LayerAutoFocus(engine);
  factoryImageLayer = new LayerFactoryImage();
  factoryImageLayer.init();
  cartLayer = new LayerCarts();

  /*-------------------- Creating Layers -------------------- */
  layerManager.registerLayer("Map",mapLayer,mapLayerParam.enabled);
  layerManager.registerLayer("Factory Image", factoryImageLayer,factoryImageLayerParam.enabled);
  layerManager.registerLayer("Factory Floor", factoryLayer,factoryFloorLayerParam.enabled);
  layerManager.registerLayer("Operation Area",operationArea,operationAreaLayerParam.enabled);
  layerManager.registerLayer("Agents", agentPool,agentLayerParam.enabled);
  //layerManager.registerLayer("Carts", cartPool.getLayer(),true);
  layerManager.registerLayer("Waypoint", setpointPool,waypointLayerParam.enabled);
  layerManager.registerLayer("Home", homePool,homeLayerParam.enabled);
  layerManager.registerLayer("Events", eventPool,eventLayerParam.enabled);
  layerManager.registerLayer("Items", itemPool,itemLayerParam.enabled);
  layerManager.registerLayer("Carts", cartLayer,itemLayerParam.enabled);
  layerManager.registerLayer("AutoFocus", autoFocusLayer,autoFocusLayerParam.enabled);
}


function modifyOperationArea(){
  document.getElementById("operationAreaMenu").style.visibility = "visible";
  operationArea.startEditing();
}

function operationAreaSave(){
  document.getElementById("operationAreaMenu").style.visibility = "hidden";
  operationArea.stopEditing(true);
}

function operationAreaClear(){
  operationArea.clear();
}

function operationAreaCancel(){
  document.getElementById("operationAreaMenu").style.visibility = "hidden";
  operationArea.stopEditing(false);
}

/*-------------------- Agent -------------------- */
// //Creating an Agent
// agent1 = new Agent("123456",'Mike','drone');

// //Updating Agent Data (this will draw the object as the handler is not installed yet)
// agent1.getTelemetryPool().updateData("lat", 51.510598787176825);
// agent1.getTelemetryPool().updateData("lng", -0.09338378906250001);

/*-------------------- Cart Layer -------------------- */
//Creating a Cart
 // cart1 = new Cart("234",'cart');
 // itemPool.registerObject(cart1, 'test');

//Updating Cart Data (this will draw the object as the handler is not installed yet)
// cart1.updateLocation(-0.09338378906250001, 51.510698787176825);

//Test Selection (registered Agent, no lat/lng)
//console.log(engine.globalPool.getSelectedObjects(test_poly))

// Updating Agent Data (object will appeat on the map since handler is installed)
//agent1.getTelemetryPool().updateData("lat", 51.510598787176825);
//agent1.getTelemetryPool().updateData("lng", -0.09338378906250001);

// Updating Cart Data (object will appeat on the map since handler is installed)
//cart1.getTelemetryPool().updateData("lat", 51.510698787176825);
//cart1.getTelemetryPool().updateData("lng", -0.09338378906250001);

//console.log(engine.globalPool.getSelectedObjects(test_poly));

initCommunicationLibDataFetch();

/*-------------------- Global Functions -------------------- */
var selected_objects = [];
function toggleSelection(){
  if(engine.getInterationMode() != 1){
    engine.setInterationMode(1);
  }else{
    for(oldObject of selected_objects){
      oldObject.getMarker().setIcon(oldObject.icon);
    }

    selected_objects = engine.getSelectedObjects();
    for(newObject of selected_objects){
      newObject.getMarker().setIcon(newObject.selectedIcon);
    }
    engine.setInterationMode(0);
  }
}

function toggleLayer(checkbox,layerName){
  layerManager.toggleLayer(layerName,checkbox.checked);
}

function isPointInsidePolygon(point, poly) {
  var polyPoints = poly;
  var x = point.lat, y = point.lng;

  var inside = false;
  for (var i = 0, j = polyPoints.length - 1; i < polyPoints.length; j = i++) {
    var xi = polyPoints[i].lat, yi = polyPoints[i].lng;
    var xj = polyPoints[j].lat, yj = polyPoints[j].lng;

    var intersect = ((yi > y) != (yj > y))
      && (x < (xj - xi) * (y - yi) / (yj - yi) + xi);
    if (intersect) inside = !inside;
  }
  return inside;
};

function collapsibleListener(){
  this.classList.toggle("active");
  var content = this.nextElementSibling;
  if (content.style.maxHeight){
    content.style.maxHeight = null;
  } else {
    content.style.maxHeight = content.scrollHeight + "px";
  } 
}

function requestKeyPair(){
  console.log(this.parent);

  var topics = [];
  for(key in this.parent.getKeypairPool().getSchema().fields){
    topics.push(key);
  }


  pendingKeypair[this.parent.getUUID()]=topics;
}
