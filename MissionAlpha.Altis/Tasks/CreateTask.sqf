private ["_task"];
task = player createSimpleTask ["Take over CSAT Outpost"];
task setSimpleTaskDescription["To be successful, you need to eliminate all hostiles in the current CSAT outpost", "Take Over CSAT Outpost", ""];
task setTaskState "Assigned";
player setCurrentTask task;
