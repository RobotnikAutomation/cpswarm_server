(cl:defpackage cpswarm_msgs-msg
  (:use )
  (:export
   "<AREADIVISIONEVENT>"
   "AREADIVISIONEVENT"
   "<AREADIVISIONEVENT>"
   "AREADIVISIONEVENT"
   "<ARRAYOFPOSITIONS>"
   "ARRAYOFPOSITIONS"
   "<ARRAYOFPOSITIONS>"
   "ARRAYOFPOSITIONS"
   "<ARRAYOFSTATES>"
   "ARRAYOFSTATES"
   "<ARRAYOFSTATES>"
   "ARRAYOFSTATES"
   "<ARRAYOFVECTORS>"
   "ARRAYOFVECTORS"
   "<ARRAYOFVECTORS>"
   "ARRAYOFVECTORS"
   "<CARTKNOWNEVENT>"
   "CARTKNOWNEVENT"
   "<CARTKNOWNEVENT>"
   "CARTKNOWNEVENT"
   "<COVERAGEACTION>"
   "COVERAGEACTION"
   "<COVERAGEACTION>"
   "COVERAGEACTION"
   "<COVERAGEACTIONFEEDBACK>"
   "COVERAGEACTIONFEEDBACK"
   "<COVERAGEACTIONFEEDBACK>"
   "COVERAGEACTIONFEEDBACK"
   "<COVERAGEACTIONGOAL>"
   "COVERAGEACTIONGOAL"
   "<COVERAGEACTIONGOAL>"
   "COVERAGEACTIONGOAL"
   "<COVERAGEACTIONRESULT>"
   "COVERAGEACTIONRESULT"
   "<COVERAGEACTIONRESULT>"
   "COVERAGEACTIONRESULT"
   "<COVERAGEFEEDBACK>"
   "COVERAGEFEEDBACK"
   "<COVERAGEFEEDBACK>"
   "COVERAGEFEEDBACK"
   "<COVERAGEGOAL>"
   "COVERAGEGOAL"
   "<COVERAGEGOAL>"
   "COVERAGEGOAL"
   "<COVERAGERESULT>"
   "COVERAGERESULT"
   "<COVERAGERESULT>"
   "COVERAGERESULT"
   "<CURRENTSTATE>"
   "CURRENTSTATE"
   "<CURRENTSTATE>"
   "CURRENTSTATE"
   "<EMPTYACTION>"
   "EMPTYACTION"
   "<EMPTYACTION>"
   "EMPTYACTION"
   "<EMPTYACTIONFEEDBACK>"
   "EMPTYACTIONFEEDBACK"
   "<EMPTYACTIONFEEDBACK>"
   "EMPTYACTIONFEEDBACK"
   "<EMPTYACTIONGOAL>"
   "EMPTYACTIONGOAL"
   "<EMPTYACTIONGOAL>"
   "EMPTYACTIONGOAL"
   "<EMPTYACTIONRESULT>"
   "EMPTYACTIONRESULT"
   "<EMPTYACTIONRESULT>"
   "EMPTYACTIONRESULT"
   "<EMPTYFEEDBACK>"
   "EMPTYFEEDBACK"
   "<EMPTYFEEDBACK>"
   "EMPTYFEEDBACK"
   "<EMPTYGOAL>"
   "EMPTYGOAL"
   "<EMPTYGOAL>"
   "EMPTYGOAL"
   "<EMPTYRESULT>"
   "EMPTYRESULT"
   "<EMPTYRESULT>"
   "EMPTYRESULT"
   "<NEWCARTEVENT>"
   "NEWCARTEVENT"
   "<NEWCARTEVENT>"
   "NEWCARTEVENT"
   "<PICKANDPLACEACTION>"
   "PICKANDPLACEACTION"
   "<PICKANDPLACEACTION>"
   "PICKANDPLACEACTION"
   "<PICKANDPLACEACTIONFEEDBACK>"
   "PICKANDPLACEACTIONFEEDBACK"
   "<PICKANDPLACEACTIONFEEDBACK>"
   "PICKANDPLACEACTIONFEEDBACK"
   "<PICKANDPLACEACTIONGOAL>"
   "PICKANDPLACEACTIONGOAL"
   "<PICKANDPLACEACTIONGOAL>"
   "PICKANDPLACEACTIONGOAL"
   "<PICKANDPLACEACTIONRESULT>"
   "PICKANDPLACEACTIONRESULT"
   "<PICKANDPLACEACTIONRESULT>"
   "PICKANDPLACEACTIONRESULT"
   "<PICKANDPLACEFEEDBACK>"
   "PICKANDPLACEFEEDBACK"
   "<PICKANDPLACEFEEDBACK>"
   "PICKANDPLACEFEEDBACK"
   "<PICKANDPLACEGOAL>"
   "PICKANDPLACEGOAL"
   "<PICKANDPLACEGOAL>"
   "PICKANDPLACEGOAL"
   "<PICKANDPLACERESULT>"
   "PICKANDPLACERESULT"
   "<PICKANDPLACERESULT>"
   "PICKANDPLACERESULT"
   "<POSITION>"
   "POSITION"
   "<POSITION>"
   "POSITION"
   "<STATEEVENT>"
   "STATEEVENT"
   "<STATEEVENT>"
   "STATEEVENT"
   "<TARGETACTION>"
   "TARGETACTION"
   "<TARGETACTION>"
   "TARGETACTION"
   "<TARGETACTIONFEEDBACK>"
   "TARGETACTIONFEEDBACK"
   "<TARGETACTIONFEEDBACK>"
   "TARGETACTIONFEEDBACK"
   "<TARGETACTIONGOAL>"
   "TARGETACTIONGOAL"
   "<TARGETACTIONGOAL>"
   "TARGETACTIONGOAL"
   "<TARGETACTIONRESULT>"
   "TARGETACTIONRESULT"
   "<TARGETACTIONRESULT>"
   "TARGETACTIONRESULT"
   "<TARGETFEEDBACK>"
   "TARGETFEEDBACK"
   "<TARGETFEEDBACK>"
   "TARGETFEEDBACK"
   "<TARGETGOAL>"
   "TARGETGOAL"
   "<TARGETGOAL>"
   "TARGETGOAL"
   "<TARGETPOSITIONEVENT>"
   "TARGETPOSITIONEVENT"
   "<TARGETPOSITIONEVENT>"
   "TARGETPOSITIONEVENT"
   "<TARGETRESULT>"
   "TARGETRESULT"
   "<TARGETRESULT>"
   "TARGETRESULT"
   "<TARGETTRACKING>"
   "TARGETTRACKING"
   "<TARGETTRACKING>"
   "TARGETTRACKING"
   "<TASKALLOCATEDEVENT>"
   "TASKALLOCATEDEVENT"
   "<TASKALLOCATEDEVENT>"
   "TASKALLOCATEDEVENT"
   "<TASKALLOCATIONACTION>"
   "TASKALLOCATIONACTION"
   "<TASKALLOCATIONACTION>"
   "TASKALLOCATIONACTION"
   "<TASKALLOCATIONACTIONFEEDBACK>"
   "TASKALLOCATIONACTIONFEEDBACK"
   "<TASKALLOCATIONACTIONFEEDBACK>"
   "TASKALLOCATIONACTIONFEEDBACK"
   "<TASKALLOCATIONACTIONGOAL>"
   "TASKALLOCATIONACTIONGOAL"
   "<TASKALLOCATIONACTIONGOAL>"
   "TASKALLOCATIONACTIONGOAL"
   "<TASKALLOCATIONACTIONRESULT>"
   "TASKALLOCATIONACTIONRESULT"
   "<TASKALLOCATIONACTIONRESULT>"
   "TASKALLOCATIONACTIONRESULT"
   "<TASKALLOCATIONEVENT>"
   "TASKALLOCATIONEVENT"
   "<TASKALLOCATIONEVENT>"
   "TASKALLOCATIONEVENT"
   "<TASKALLOCATIONFEEDBACK>"
   "TASKALLOCATIONFEEDBACK"
   "<TASKALLOCATIONFEEDBACK>"
   "TASKALLOCATIONFEEDBACK"
   "<TASKALLOCATIONGOAL>"
   "TASKALLOCATIONGOAL"
   "<TASKALLOCATIONGOAL>"
   "TASKALLOCATIONGOAL"
   "<TASKALLOCATIONRESULT>"
   "TASKALLOCATIONRESULT"
   "<TASKALLOCATIONRESULT>"
   "TASKALLOCATIONRESULT"
   "<TRACKINGACTION>"
   "TRACKINGACTION"
   "<TRACKINGACTION>"
   "TRACKINGACTION"
   "<TRACKINGACTIONFEEDBACK>"
   "TRACKINGACTIONFEEDBACK"
   "<TRACKINGACTIONFEEDBACK>"
   "TRACKINGACTIONFEEDBACK"
   "<TRACKINGACTIONGOAL>"
   "TRACKINGACTIONGOAL"
   "<TRACKINGACTIONGOAL>"
   "TRACKINGACTIONGOAL"
   "<TRACKINGACTIONRESULT>"
   "TRACKINGACTIONRESULT"
   "<TRACKINGACTIONRESULT>"
   "TRACKINGACTIONRESULT"
   "<TRACKINGFEEDBACK>"
   "TRACKINGFEEDBACK"
   "<TRACKINGFEEDBACK>"
   "TRACKINGFEEDBACK"
   "<TRACKINGGOAL>"
   "TRACKINGGOAL"
   "<TRACKINGGOAL>"
   "TRACKINGGOAL"
   "<TRACKINGRESULT>"
   "TRACKINGRESULT"
   "<TRACKINGRESULT>"
   "TRACKINGRESULT"
   "<VECTOR>"
   "VECTOR"
   "<VECTOR>"
   "VECTOR"
   "<VECTORSTAMPED>"
   "VECTORSTAMPED"
   "<VECTORSTAMPED>"
   "VECTORSTAMPED"
   "<VELOCITY>"
   "VELOCITY"
   "<VELOCITY>"
   "VELOCITY"
  ))

