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

class planrollRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
      this.planning_algorithm = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = [];
      }
      if (initObj.hasOwnProperty('planning_algorithm')) {
        this.planning_algorithm = initObj.planning_algorithm
      }
      else {
        this.planning_algorithm = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type planrollRequest
    // Serialize message field [goal]
    bufferOffset = _arraySerializer.float32(obj.goal, buffer, bufferOffset, null);
    // Serialize message field [planning_algorithm]
    bufferOffset = _serializer.string(obj.planning_algorithm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type planrollRequest
    let len;
    let data = new planrollRequest(null);
    // Deserialize message field [goal]
    data.goal = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [planning_algorithm]
    data.planning_algorithm = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.goal.length;
    length += object.planning_algorithm.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_control/planrollRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f57e29e5f8b15585eb45563f39f1d69e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] goal
    string planning_algorithm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new planrollRequest(null);
    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = []
    }

    if (msg.planning_algorithm !== undefined) {
      resolved.planning_algorithm = msg.planning_algorithm;
    }
    else {
      resolved.planning_algorithm = ''
    }

    return resolved;
    }
};

class planrollResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.suc = null;
      this.file = null;
    }
    else {
      if (initObj.hasOwnProperty('suc')) {
        this.suc = initObj.suc
      }
      else {
        this.suc = false;
      }
      if (initObj.hasOwnProperty('file')) {
        this.file = initObj.file
      }
      else {
        this.file = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type planrollResponse
    // Serialize message field [suc]
    bufferOffset = _serializer.bool(obj.suc, buffer, bufferOffset);
    // Serialize message field [file]
    bufferOffset = _serializer.string(obj.file, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type planrollResponse
    let len;
    let data = new planrollResponse(null);
    // Deserialize message field [suc]
    data.suc = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [file]
    data.file = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_control/planrollResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '984465bc77c86570d6a1a5939a13a2de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool suc
    string file
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new planrollResponse(null);
    if (msg.suc !== undefined) {
      resolved.suc = msg.suc;
    }
    else {
      resolved.suc = false
    }

    if (msg.file !== undefined) {
      resolved.file = msg.file;
    }
    else {
      resolved.file = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: planrollRequest,
  Response: planrollResponse,
  md5sum() { return 'dd0ec4b436084a05fc1f687964d711d5'; },
  datatype() { return 'hand_control/planroll'; }
};
