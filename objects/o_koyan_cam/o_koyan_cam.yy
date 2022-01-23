{
  "spriteId": null,
  "solid": false,
  "visible": false,
  "spriteMaskId": null,
  "persistent": true,
  "parentObjectId": null,
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [
    {"x":0.0,"y":0.0,},
    {"x":32.0,"y":0.0,},
    {"x":32.0,"y":32.0,},
    {"x":0.0,"y":32.0,},
  ],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":75,"eventType":8,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":1,"eventType":2,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":2,"eventType":2,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":3,"eventType":2,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":122,"eventType":9,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":84,"eventType":9,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":12,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":2,"eventType":3,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":4,"eventType":7,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":5,"value":"player","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMObject",
      ],"resourceVersion":"1.0","name":"k_TARGET_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"\"SLOW\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"VERY_SLOW\"",
        "\"SLOW\"",
        "\"NORMAL\"",
        "\"FAST\"",
        "\"INSTANT\"",
      ],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_ALARM_SPEED_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"\"FOLLOW_TARGET\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"FOLLOW_TARGET\"",
        "\"FOLLOW_MOUSE\"",
        "\"FOLLOW_MOUSE_PEEK\"",
        "\"FOLLOW_MOUSE_DRAG\"",
        "\"FOLLOW_MOUSE_BORDER\"",
        "\"SMOOTH_TO_TARGET\"",
        "\"MOVE_TO_TARGET\"",
        "\"MOVE_TO_CLICK\"",
        "\"CELESTE_MODE\"",
      ],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_CAMERA_MODE_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"\"480x270\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"480x270\"",
        "\"320x180\"",
      ],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_VIEW_AND_RES_BASE_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"2","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "0.10",
        "0.25",
        "0.50",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
      ],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_VIEW_MULTPLY_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"4","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
      ],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_RES_MULTPLY_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"0.25","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "0.10",
        "0.25",
        "0.50",
        "0.75",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
      ],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_GUI_DIVIDER_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"noone","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "noone",
        "\"room1@room2@room3\"",
      ],"multiselect":false,"filters":[
        "GMRoom",
      ],"resourceVersion":"1.0","name":"k_FULL_VIEW_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"\"1280x1024\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"1280x1024\"",
        "\"1366x768\"",
        "\"1440x900\"",
        "\"1440x960\"",
        "\"1440x1050\"",
        "\"1600x1200\"",
        "\"1920x1200\"",
        "\"2048x1080\"",
        "\"2560x1600\"",
      ],"multiselect":true,"filters":[],"resourceVersion":"1.0","name":"k_SUPPORTED_RES_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"5","rangeEnabled":true,"rangeMin":1.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_CAMERA_SPEED_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"1","rangeEnabled":true,"rangeMin":-4.0,"rangeMax":4.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_ZOOM_VALUE_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"0","rangeEnabled":true,"rangeMin":0.0,"rangeMax":128.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_CAM_X_OFFSET_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"0","rangeEnabled":true,"rangeMin":0.0,"rangeMax":128.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_CAM_Y_OFFSET_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"False","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_DEBUG_UI_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"False","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_FULL_SCREEN_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"True","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_FORCE_PIXEL_PERFECT_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"False","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_FREEROAM_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"False","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_SUPER_OPTIMIZE_def","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":7,"value":"$FFFFFFFF","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"k_UI_COLOR_def","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "All-In-One Camera (BIGGER_CHAD) Version",
    "path": "folders/All-In-One Camera (BIGGER_CHAD) Version.yy",
  },
  "resourceVersion": "1.0",
  "name": "o_koyan_cam",
  "tags": [],
  "resourceType": "GMObject",
}