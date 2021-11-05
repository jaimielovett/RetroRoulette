{
  "spriteId": {
    "name": "spr_FTF_blank_panel",
    "path": "sprites/spr_FTF_blank_panel/spr_FTF_blank_panel.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_FTF_pixelate",
    "path": "objects/obj_FTF_pixelate/obj_FTF_pixelate.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":1,"eventType":2,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":5,"value":"FTF_EaseInExpo","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"EaseIn","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"FTF_EaseOutExpo","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"EaseOut","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"40","rangeEnabled":true,"rangeMin":0.0,"rangeMax":100.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"desired_frequency_in","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"60","rangeEnabled":true,"rangeMin":0.0,"rangeMax":100.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"desired_frequency_out","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"desired_cell_size","path":"objects/obj_FTF_pixelate/obj_FTF_pixelate.yy",},"objectId":{"name":"obj_FTF_pixelate","path":"objects/obj_FTF_pixelate/obj_FTF_pixelate.yy",},"value":"1","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Prefabs",
    "path": "folders/Libraries/FTF_Free_The_Filters/Objects/Prefabs.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_FTF_Pixelator_mouseClick",
  "tags": [],
  "resourceType": "GMObject",
}