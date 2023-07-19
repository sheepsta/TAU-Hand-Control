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

class rolloutReqRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actions = null;
    }
    else {
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rolloutReqRequest
    // Serialize message field [actions]
    bufferOffset = _arraySerializer.float32(obj.actions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rolloutReqRequest
    let len;
    let data = new rolloutReqRequest(null);
    // Deserialize message field [actions]
    data.actions = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.actions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rollout/rolloutReqRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb0eed2c2e2939ef752b1fa8fa9c2ab9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] actions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rolloutReqRequest(null);
    if (msg.actions !== undefined) {
      resolved.actions = msg.actions;
    }
    else {
      resolved.actions = []
    }

    return resolved;
    }
};

class rolloutReqResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.states = null;
      this.actions = null;
      this.time = null;
      this.success = null;
      this.reason = null;
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
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('reason')) {
        this.reason = initObj.reason
      }
      else {
        this.reason = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rolloutReqResponse
    // Serialize message field [states]
    bufferOffset = _arraySerializer.float32(obj.states, buffer, bufferOffset, null);
    // Serialize message field [actions]
    bufferOffset = _arraySerializer.float32(obj.actions, buffer, bufferOffset, null);
    // Serialize message field [time]
    bufferOffset = _arraySerializer.float32(obj.time, buffer, bufferOffset, null);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [reason]
    bufferOffset = _serializer.string(obj.reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rolloutReqResponse
    let len;
    let data = new rolloutReqResponse(null);
    // Deserialize message field [states]
    data.states = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [actions]
    data.actions = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [time]
    data.time = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reason]
    data.reason = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.states.length;
    length += 4 * object.actions.length;
    length += 4 * object.time.length;
    length += object.reason.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rollout/rolloutReqResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cebb4d45e8de7ba5ee164231614c7a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] states
    float32[] actions
    float32[] time
    bool success
    string reason
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rolloutReqResponse(null);
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

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.reason !== undefined) {
      resolved.reason = msg.reason;
    }
    else {
      resolved.reason = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: rolloutReqRequest,
  Response: rolloutReqResponse,
  md5sum() { return 'a45383b0a89115a618aa3e42009d257b'; },
  datatype() { return 'rollout/rolloutReq'; }
};
