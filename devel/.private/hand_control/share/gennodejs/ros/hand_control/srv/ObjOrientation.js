// Auto-generated. Do not edit!

// (in-package hand_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ObjOrientationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjOrientationRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjOrientationRequest
    let len;
    let data = new ObjOrientationRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_control/ObjOrientationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjOrientationRequest(null);
    return resolved;
    }
};

class ObjOrientationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ori = null;
    }
    else {
      if (initObj.hasOwnProperty('ori')) {
        this.ori = initObj.ori
      }
      else {
        this.ori = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjOrientationResponse
    // Serialize message field [ori]
    bufferOffset = _serializer.float32(obj.ori, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjOrientationResponse
    let len;
    let data = new ObjOrientationResponse(null);
    // Deserialize message field [ori]
    data.ori = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_control/ObjOrientationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d0c22b39a7964032a79fdf4de10eb10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 ori
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjOrientationResponse(null);
    if (msg.ori !== undefined) {
      resolved.ori = msg.ori;
    }
    else {
      resolved.ori = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: ObjOrientationRequest,
  Response: ObjOrientationResponse,
  md5sum() { return '8d0c22b39a7964032a79fdf4de10eb10'; },
  datatype() { return 'hand_control/ObjOrientation'; }
};
