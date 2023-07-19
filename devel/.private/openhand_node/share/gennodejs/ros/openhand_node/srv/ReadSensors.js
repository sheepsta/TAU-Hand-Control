// Auto-generated. Do not edit!

// (in-package openhand_node.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ReadSensorsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_sensors = null;
    }
    else {
      if (initObj.hasOwnProperty('num_sensors')) {
        this.num_sensors = initObj.num_sensors
      }
      else {
        this.num_sensors = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadSensorsRequest
    // Serialize message field [num_sensors]
    bufferOffset = _serializer.int32(obj.num_sensors, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadSensorsRequest
    let len;
    let data = new ReadSensorsRequest(null);
    // Deserialize message field [num_sensors]
    data.num_sensors = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'openhand_node/ReadSensorsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '850b23862be1565b5d9c714a58621559';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 num_sensors
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadSensorsRequest(null);
    if (msg.num_sensors !== undefined) {
      resolved.num_sensors = msg.num_sensors;
    }
    else {
      resolved.num_sensors = 0
    }

    return resolved;
    }
};

class ReadSensorsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force = null;
      this.flex = null;
    }
    else {
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = [];
      }
      if (initObj.hasOwnProperty('flex')) {
        this.flex = initObj.flex
      }
      else {
        this.flex = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadSensorsResponse
    // Serialize message field [force]
    bufferOffset = _arraySerializer.float32(obj.force, buffer, bufferOffset, null);
    // Serialize message field [flex]
    bufferOffset = _arraySerializer.float32(obj.flex, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadSensorsResponse
    let len;
    let data = new ReadSensorsResponse(null);
    // Deserialize message field [force]
    data.force = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [flex]
    data.flex = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.force.length;
    length += 4 * object.flex.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'openhand_node/ReadSensorsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66a7e3259388f1b961ed214d82e3163f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] force
    float32[] flex
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadSensorsResponse(null);
    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = []
    }

    if (msg.flex !== undefined) {
      resolved.flex = msg.flex;
    }
    else {
      resolved.flex = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ReadSensorsRequest,
  Response: ReadSensorsResponse,
  md5sum() { return '84e09e818ebe556ee5cef963e282890f'; },
  datatype() { return 'openhand_node/ReadSensors'; }
};
