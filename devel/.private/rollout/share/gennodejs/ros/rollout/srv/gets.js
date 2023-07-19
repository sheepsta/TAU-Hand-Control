// Auto-generated. Do not edit!

// (in-package rollout.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class getsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getsRequest
    let len;
    let data = new getsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rollout/getsRequest';
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
    const resolved = new getsRequest(null);
    return resolved;
    }
};

class getsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.states = null;
      this.actions = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getsResponse
    // Serialize message field [states]
    bufferOffset = _arraySerializer.float32(obj.states, buffer, bufferOffset, null);
    // Serialize message field [actions]
    bufferOffset = _arraySerializer.float32(obj.actions, buffer, bufferOffset, null);
    // Serialize message field [time]
    bufferOffset = _arraySerializer.float32(obj.time, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getsResponse
    let len;
    let data = new getsResponse(null);
    // Deserialize message field [states]
    data.states = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [actions]
    data.actions = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [time]
    data.time = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.states.length;
    length += 4 * object.actions.length;
    length += 4 * object.time.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rollout/getsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ad8157a5872cd29232e606a0c998cb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] states
    float32[] actions
    float32[] time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new getsResponse(null);
    if (msg.states !== undefined) {
      resolved.states = msg.states;
    }
    else {
      resolved.states = []
    }

    if (msg.actions !== undefined) {
      resolved.actions = msg.actions;
    }
    else {
      resolved.actions = []
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = []
    }

    return resolved;
    }
};

module.exports = {
  Request: getsRequest,
  Response: getsResponse,
  md5sum() { return '8ad8157a5872cd29232e606a0c998cb1'; },
  datatype() { return 'rollout/gets'; }
};
