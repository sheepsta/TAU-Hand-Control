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

class rolloutReqFileRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file = null;
    }
    else {
      if (initObj.hasOwnProperty('file')) {
        this.file = initObj.file
      }
      else {
        this.file = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rolloutReqFileRequest
    // Serialize message field [file]
    bufferOffset = _serializer.string(obj.file, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rolloutReqFileRequest
    let len;
    let data = new rolloutReqFileRequest(null);
    // Deserialize message field [file]
    data.file = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rollout/rolloutReqFileRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5aa404286053ca7f6cc32f23f37b85d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string file
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rolloutReqFileRequest(null);
    if (msg.file !== undefined) {
      resolved.file = msg.file;
    }
    else {
      resolved.file = ''
    }

    return resolved;
    }
};

class rolloutReqFileResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.states = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rolloutReqFileResponse
    // Serialize message field [states]
    bufferOffset = _arraySerializer.float32(obj.states, buffer, bufferOffset, null);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rolloutReqFileResponse
    let len;
    let data = new rolloutReqFileResponse(null);
    // Deserialize message field [states]
    data.states = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.states.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rollout/rolloutReqFileResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8524beb0d4037c915dee8e093811cf7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] states
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rolloutReqFileResponse(null);
    if (msg.states !== undefined) {
      resolved.states = msg.states;
    }
    else {
      resolved.states = []
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: rolloutReqFileRequest,
  Response: rolloutReqFileResponse,
  md5sum() { return 'f682d82c4e2a8d10743450971038e4c0'; },
  datatype() { return 'rollout/rolloutReqFile'; }
};
