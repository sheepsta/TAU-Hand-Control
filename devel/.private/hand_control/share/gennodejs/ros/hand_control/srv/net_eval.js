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

class net_evalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type net_evalRequest
    // Serialize message field [state]
    bufferOffset = _arraySerializer.float32(obj.state, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type net_evalRequest
    let len;
    let data = new net_evalRequest(null);
    // Deserialize message field [state]
    data.state = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.state.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_control/net_evalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3faa55f8813856aab6c4371b84f9b124';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new net_evalRequest(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = []
    }

    return resolved;
    }
};

class net_evalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type net_evalResponse
    // Serialize message field [action]
    bufferOffset = _arraySerializer.float32(obj.action, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type net_evalResponse
    let len;
    let data = new net_evalResponse(null);
    // Deserialize message field [action]
    data.action = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.action.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_control/net_evalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a70a7d92e0376dcb967914076f276ea6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new net_evalResponse(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = []
    }

    return resolved;
    }
};

module.exports = {
  Request: net_evalRequest,
  Response: net_evalResponse,
  md5sum() { return 'e3969ebe585f0d178688db6dd33c11d0'; },
  datatype() { return 'hand_control/net_eval'; }
};
