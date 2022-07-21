{
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"instances":[],"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"Player","tags":[],"resourceType":"GMRInstanceLayer",},
    {"instances":[],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"Entities","tags":[],"resourceType":"GMRInstanceLayer",},
    {"instances":[
        {"properties":[],"isDnd":false,"objectId":{"name":"obj_initializer","path":"objects/obj_initializer/obj_initializer.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":6.0,"y":10.0,"resourceVersion":"1.0","name":"inst_5121508E","tags":[],"resourceType":"GMRInstance",},
      ],"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"Invisibles","tags":[],"resourceType":"GMRInstanceLayer",},
    {"instances":[],"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"Instances","tags":[],"resourceType":"GMRInstanceLayer",},
    {"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[
        {"visible":true,"depth":500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[
            {"instances":[],"visible":true,"depth":600,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"near_colour","tags":[],"resourceType":"GMRInstanceLayer",},
            {"visible":true,"depth":700,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_large_blur","properties":[
                {"type":0,"name":"g_Radius","value":"2",},
                {"type":2,"name":"g_NoiseTexture","value":"_filter_large_blur_noise",},
              ],"resourceVersion":"1.0","name":"near_blur","tags":[],"resourceType":"GMREffectLayer",},
            {"instances":[],"visible":true,"depth":800,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"near_background_entities","tags":[],"resourceType":"GMRInstanceLayer",},
          ],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"near","tags":[],"resourceType":"GMRLayer",},
        {"visible":true,"depth":900,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[
            {"instances":[],"visible":true,"depth":1000,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"mid_colour","tags":[],"resourceType":"GMRInstanceLayer",},
            {"visible":true,"depth":1100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_large_blur","properties":[
                {"type":0,"name":"g_Radius","value":"5",},
                {"type":2,"name":"g_NoiseTexture","value":"_filter_large_blur_noise",},
              ],"resourceVersion":"1.0","name":"mid_blur","tags":[],"resourceType":"GMREffectLayer",},
            {"instances":[],"visible":true,"depth":1200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"mid_background_entities","tags":[],"resourceType":"GMRInstanceLayer",},
          ],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"mid","tags":[],"resourceType":"GMRLayer",},
        {"visible":true,"depth":1300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[
            {"instances":[],"visible":true,"depth":1400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"far_colour","tags":[],"resourceType":"GMRInstanceLayer",},
            {"visible":true,"depth":1500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_large_blur","properties":[
                {"type":0,"name":"g_Radius","value":"10",},
                {"type":2,"name":"g_NoiseTexture","value":"_filter_large_blur_noise",},
              ],"resourceVersion":"1.0","name":"far_blur","tags":[],"resourceType":"GMREffectLayer",},
            {"instances":[],"visible":true,"depth":1600,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"far_background_entities","tags":[],"resourceType":"GMRInstanceLayer",},
          ],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"far","tags":[],"resourceType":"GMRLayer",},
        {"spriteId":null,"colour":4278190080,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":1700,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"Background","tags":[],"resourceType":"GMRBackgroundLayer",},
      ],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"background_stuff","tags":[],"resourceType":"GMRLayer",},
  ],
  "inheritLayers": false,
  "creationCodeFile": "${project_dir}/rooms/rm_initialization/RoomCreationCode.gml",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_5121508E","path":"rooms/rm_initialization/rm_initialization.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 1024,
    "Height": 768,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": false,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "resourceVersion": "1.0",
  "name": "rm_initialization",
  "tags": [],
  "resourceType": "GMRoom",
}