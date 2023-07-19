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

class rolloutReqModRequest {
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
    // Serializes a message object of type rolloutReqModRequest
    // Serialize message field [actions]
    bufferOffset = _arraySerializer.float32(obj.actions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rolloutReqModRequest
    let len;
    let data = new rolloutReqModRequest(null);
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
    return 'rollout/rolloutReqModRequest';
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
    const resolved = new rolloutReqModRequest(null);
    if (msg.actions !== undefined) {
      resolved.actions = msg.actions;
    }
    else {
      resolved.actions = []
    }

    return resolved;
    }
};

class rolloutReqModResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.states = null;
      this.next_states = null;
      this.actions = null;
      this.time = null;
      this.success = null;
      this.reason = null;
      this.target_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
      if (initObj.hasOwnProperty('next_states')) {
        this.next_states = initObj.next_states
      }
      else {
        this.next_states = [];
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
      if (initObj.hasOwnProperty('target_pos')) {
        this.target_pos = initObj.target_pos
      }
      else {
        this.target_pos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rolloutReqModResponse
    // Serialize message field [states]
    bufferOffset = _arraySerializer.float32(obj.states, buffer, bufferOffset, null);
    // Serialize message field [next_states]
    bufferOffset = _arraySerializer.float32(obj.next_states, buffer, bufferOffset, null);
    // Serialize message field [actions]
    bufferOffset = _arraySerializer.float32(obj.actions, buffer, bufferOffset, null);
    // Serialize message field [time]
    bufferOffset = _arraySerializer.float32(obj.time, buffer, bufferOffset, null);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [reason]
    bufferOffset = _serializer.string(obj.reason, buffer, bufferOffset);
    // Serialize message field [target_pos]
    bufferOffset = _arraySerializer.float32(obj.target_pos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rolloutReqModResponse
    let len;
    let data = new rolloutReqModResponse(null);
    // Deserialize message field [states]
    data.states = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [next_states]
    data.next_states = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [actions]
    data.actions = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [time]
    data.time = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reason]
    data.reason = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_pos]
    data.target_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.states.length;
    length += 4 * object.next_states.length;
    length += 4 * object.actions.length;
    length += 4 * object.time.length;
    length += object.reason.length;
    length += 4 * object.target_pos.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rollout/rolloutReqModResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e604165d44aea2e12649320573032f78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] states
    float32[] next_states
    float32[] actions
    float32[] time
    bool success
    string reason
    float32[] target_pos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rolloutReqModResponse(null);
    if (msg.states !== undefined) {
      resolved.states = msg.states;
    }
    else {
      resolved.states = []
    }

    if (msg.next_states !== undefined) {
      resolved.next_states = msg.next_states;
    }
    else {
      resolved.next_states = []
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

    if (msg.target_pos !== undefined) {
      resolved.target_pos = msg.target_pos;
    }
    else {
      resolved.target_pos = []
    }

    return resolved;
    }
};

module.exports = {
  Request: rolloutReqModRequest,
  Response: rolloutReqModResponse,
  md5sum() { return '99038b95d1ebc1ede29fc60628f376a0'; },
  datatype() { return 'rollout/rolloutReqMod'; }
};
