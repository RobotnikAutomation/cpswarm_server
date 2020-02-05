
/*********************************************************

Event Button Configuration

**********************************************************/

//When defining parameters for event use the following numbers for parameters types:
// bool bool_value = 1;
// int64 int_value = 2;
// uint64 uint_value = 3;
// double double_value = 4;
// string string_value= 5;
// Map map_value = 6;
// ArrayOfBool bool_array = 11;
// ArrayOfInt int_array = 12;
// ArrayOfUInt uint_array = 13;
// ArrayOfDouble double_array = 14;
// ArrayOfString string_array = 15;
// ArrayOfMap map_array = 16;

guiEventButtons = {
  customEvents : [
    {
      buttonText: "Start",
      eventName: "completed",
      parameters: {},
      styleClass: "event_button"
    }/*,
    {
      buttonText: "Herzoge",
      eventName: "mission_start",
      parameters: {"destination" : ["Herzogenburg", 5]},
      styleClass: "event_button"
    },
    {
      buttonText: "St.Poelten",
      eventName: "mission_start",
      parameters: {"destination" : ["St.Poelten", 5]},
      styleClass: "event_button"
    },
    {
      buttonText: "Atzen",
      eventName: "mission_start",
      parameters: {"destination" : ["Atzenbrugg", 5]},
      styleClass: "event_button"
    },
    {
      buttonText: "Sieghar",
      eventName: "mission_start",
      parameters: {"destination" : ["Sieghartskirchen", 5]},
      styleClass: "event_button"
    },*/
    // {
    //   buttonText: "Goto",
    //   eventName: "goto",
    //   parameters: {"items" : ["", 5], "speed" : [5.6, 4]},
    //   styleClass: "event_button"
    // }
  ],
  globalEvents : [
    {
      buttonText: "Start Mission",
      eventName: "monitoring_control_event",
      parameters: {"state":[1,2]},
      styleClass: "start_button"
    },
    {
      buttonText: "Rearm Mission",
      eventName: "monitoring_control_event",
      parameters: {"state":[2,2]},
      styleClass: "rearm_button"
    },
    {
      buttonText: "Abort Mission",
      eventName: "monitoring_control_event",
      parameters: {"state":[3,2]},
      styleClass: "abort_button"
    }
  ]
}

/*********************************************************

Agent/Object Configuration

**********************************************************/

exampleIcons = {
  default: {
    defaultIcon:{
      src: "turtlebot.png",
      size : [30, 30]
    },
    selectedIcon : {
      src: "turtlebot_selected.png",
      size : [30, 30]
    }
  },
  testState1: {
    defaultIcon:{
      src : "rover.png",
      size : [40, 40]
    },
    selectedIcon : {
      src: "rover_selected.png",
      size : [40, 40]
    }
  },
  testState2: {
    defaultIcon:{
      src : "truck.png",
      size : [40, 40]
    },
    selectedIcon : {
      src: "truck_selected.png",
      size : [40, 40]
    }
  } 
}

agentTypes = {
  default:{
    quickdata: {},
    iconState: exampleIcons
  },
  drone: {
    quickdata: {
      autopilot : "autopilotState/mode",
      battery: "batteryState/percentage",
      mission: "",
      current: "incoming_messages",
      pos: "position/latitude"
    },
    homeIcon: "home.png",
    iconState: exampleIcons
  },
  simulator: {
    quickdata: {
      autopilot : "autopilotState/mode",
      battery: "batteryState/percentage",
      mission: "",
      current: "incoming_messages",
      pos: "position/latitude"
    },
    homeIcon: "home.png",
    iconState: exampleIcons
  },
  turtle: {
    quickdata: {
     // status : "static_status_value",
     // battery: "",
     mission: "",
     // linked: "",
     x: "pose/pose/pose/position/x",
     y: "pose/pose/pose/position/y"
    },
    iconState: exampleIcons,
    homeIcon: "home.png"
  },
  truck: {
    quickdata: {
      status : "status",
      substatus : "substatus",
      speed : "location/speed",
      mission: "",
      pos: "position/latitude"
    },
    homeIcon: "location_pin.png",
    iconState: {
      default: {
        defaultIcon:{
          src: "truck.png",
          size : [40, 40]
        },
        selectedIcon : {
          src: "truck_selected.png",
          size : [40, 40]
        }  
      }

    },
    lightBulb:{ // Enables the light bulb next to the agent icon
      topic: "status", //Topic that changes the color of the bulb
      mapping: { //Mapping of states to colors
        idle: "yellow", // Key= State, Value = Color
        shortest_path: "blue",
        free_driving: "lightgreen"
      }
    }
  }
}

itemTypes = {
  cart: {
    defaultIcon : "rescue_target.png",
    selectedIcon : "rescue_target_selected.png"
  }
}

/*********************************************************

Event Configuration

**********************************************************/

drawableEvents = {
  target_found : {
    duration : 10000, //0 to infinite
    lat: "pose/pose/position/y",
    lng: "pose/pose/position/x",
    icon : "cart0.png",
    icon_size : [40, 40],
    focusEvent : true
  },
  high_traffic : {
    duration : 6000,
    lat: "latitude",
    lng: "longitude",
    icon : "traffic_icon.png",
    icon_size : [20, 20],
    focusEvent : true
  },
  target_rescued : {
    duration : 6000,
    lat: "pose/latitude",
    lng: "pose/longitude",
    icon : "drone_selected.png",
    icon_size : [20, 20],
    focusEvent : true
  },
  cart_delivered : {
    duration : 6000,
    lat: "pose/latitude",
    lng: "pose/longitude",
    icon : "drone_selected.png",
    icon_size : [20, 20],
    focusEvent : true
  }
}

ignoredEvents = ["position"];

/*********************************************************

Layer Configuration

**********************************************************/

mapLayerParam = {
  enabled: false, //Layer enabled on startup
  lat: 45.0875945,
  lng: 7.6072913,
  zoomLevel: 13
}

autoFocusLayerParam = {
  enabled: true, //Layer enabled on startup
  focusMargin: 0.23
}

itemLayerParam = {
  enabled: true //Layer enabled on startup
}

eventLayerParam = {
  enabled: true //Layer enabled on startup
}

factoryFloorLayerParam = {
  enabled: false, //Layer enabled on startup
  kml_file: "factory.kml"
}

operationAreaLayerParam = {
  enabled: true, //Layer enabled on startup
  eventName: "new_area", //Event name to send the new points
  color : "#FF0000", // Color of the Operation Area (non usable part)
  opacity: 0.2
}

waypointLayerParam ={ //Parameters for the waypoint line of the agent
  enabled: true, //Layer enabled on startup
  color : "blue", 
  weight: 2,
  opacity: 0.5,
  smoothFactor: 1,
  waypointLngTopic: "currentgoal/pose/position/x", //Destination Topics
  waypointLatTopic: "currentgoal/pose/position/y",
  locationLngTopic: "pose/pose/pose/position/x", //Current Location topics
  locationLatTopic: "pose/pose/pose/position/y"
}

homeLayerParam ={
  enabled: true, //Layer enabled on startup
  homeLngTopic: "destination/longitude",
  homeLatTopic: "destination/latitude"
}

agentLayerParam ={
  enabled: true, //Layer enabled on startup
  //agentLngTopic: "location/longitude",
  agentLngTopic: "pose/pose/pose/position/x",
  agentLatTopic: "pose/pose/pose/position/y"
}

factoryImageLayerParam ={
  // the following limitation/requirements are present:
  //   - The floor image needs to be ready before loading the tool
  //   - The floor image needs to be aligbed with north being at the upper part of the image
  //   - The corners of the image must be given
  enabled: true,
  factories : {
    //"factory1" :{
    //  imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Sydney_Opera_House_-_Dec_2008.jpg/1024px-Sydney_Opera_House_-_Dec_2008.jpg",
    //  imageBounds: [[-33.8650, 151.2094],[-35.8650, 154.2094]]
    //},
    "factory2" :{ //Test Z index
      imageUrl: "digisky_hangar_crop.png",
      //imageBounds: [[-16.32, 22.09],[13.818, -19.544]]
      imageBounds: [[-10, 10],[10, -10]]
    }
  }
}

cartLayerParam ={
  enabled: true,
  eventName: "new_place_pose",
  carts: {
    "cart0" :{
      location: [2, 0],
      imageUrl: "cart.png"
    },
    "cart1" :{
      location: [4.1, -3.5],
      imageUrl: "cart.png"
    }
  }
}
