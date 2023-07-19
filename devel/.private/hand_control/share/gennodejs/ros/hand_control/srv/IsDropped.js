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

class IsDroppedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsDroppedRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsDroppedRequest
    let len;
    let data = new IsDroppedRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_control/IsDroppedRequest';
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
    const resolved = new IsDroppedRequest(null);
    return resolved;
    }
};

class IsDroppedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dropped = null;
    }
    else {
      if (initObj.hasOwnProperty('dropped')) {
        this.dropped = initObj.dropped
      }
      else {
        this.dropped = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsDroppedResponse
    // Serialize message field [dropped]
    bufferOffset = _serializer.bool(obj.dropped, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsDroppedResponse
    let len;
    let data = new IsDroppedResponse(null);
    // Deserialize message field [dropped]
    data.dropped = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hand_control/IsDroppedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89b1ea20d43c8bbdf4c72f92a40ab2ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool dropped
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IsDroppedResponse(null);
    if (msg.dropped !== undefined) {
      resolved.dropped = msg.dropped;
    }
    else {
      resolved.dropped = false
    }

    return resolved;
    }
};

module.exports = {
  Request: IsDroppedRequest,
  Response: IsDroppedResponse,
  md5sum() { return '89b1ea20d43c8bbdf4c72f92a40ab2ad'; },
  datatype() { return 'hand_control/IsDropped'; }
};
