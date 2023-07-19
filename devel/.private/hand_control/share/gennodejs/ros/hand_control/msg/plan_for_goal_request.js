// Auto-generated. Do not edit!

// (in-package hand_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class plan_for_goal_request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_state = null;
      this.start_state = null;
      this.goal_radius = null;
      this.time_limit = null;
      this.probability_success_threshold = null;
      this.planning_algorithm = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_state')) {
        this.goal_state = initObj.goal_state
      }
      else {
        this.goal_state = [];
      }
      if (initObj.hasOwnProperty('start_state')) {
        this.start_state = initObj.start_state
      }
      else {
        this.start_state = [];
      }
      if (initObj.hasOwnProperty('goal_radius')) {
        this.goal_radius = initObj.goal_radius
      }
      else {
        this.goal_radius = 0.0;
      }
      if (initObj.hasOwnProperty('time_limit')) {
        this.time_limit = initObj.time_limit
      }
      else {
        this.time_limit = 0.0;
      }
      if (initObj.hasOwnProperty('probability_success_threshold')) {
        this.probability_success_threshold = initObj.probability_success_threshold
      }
      else {
        this.probability_success_threshold = 0.0;
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
    // Serializes a message object of type plan_for_goal_request
    // Serialize message field [goal_state]
    bufferOffset = _arraySerializer.float64(obj.goal_state, buffer, bufferOffset, null);
    // Serialize message field [start_state]
    bufferOffset = _arraySerializer.float64(obj.start_state, buffer, bufferOffset, null);
    // Serialize message field [goal_radius]
    bufferOffset = _serializer.float64(obj.goal_radius, buffer, bufferOffset);
    // Serialize message field [time_limit]
    bufferOffset = _serializer.float64(obj.time_limit, buffer, bufferOffset);
    // Serialize message field [probability_success_threshold]
    bufferOffset = _serializer.float64(obj.probability_success_threshold, buffer, bufferOffset);
    // Serialize message field [planning_algorithm]
    bufferOffset = _serializer.string(obj.planning_algorithm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type plan_for_goal_request
    let len;
    let data = new plan_for_goal_request(null);
    // Deserialize message field [goal_state]
    data.goal_state = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [start_state]
    data.start_state = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [goal_radius]
    data.goal_radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time_limit]
    data.time_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [probability_success_threshold]
    data.probability_success_threshold = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [planning_algorithm]
    data.planning_algorithm = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.goal_state.length;
    length += 8 * object.start_state.length;
    length += object.planning_algorithm.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hand_control/plan_for_goal_request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14a5c7b5abd5bbd2576cf26f819de0bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] goal_state
    float64[] start_state
    float64 goal_radius
    float64 time_limit
    float64 probability_success_threshold
    string planning_algorithm
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new plan_for_goal_request(null);
    if (msg.goal_state !== undefined) {
      resolved.goal_state = msg.goal_state;
    }
    else {
      resolved.goal_state = []
    }

    if (msg.start_state !== undefined) {
      resolved.start_state = msg.start_state;
    }
    else {
      resolved.start_state = []
    }

    if (msg.goal_radius !== undefined) {
      resolved.goal_radius = msg.goal_radius;
    }
    else {
      resolved.goal_radius = 0.0
    }

    if (msg.time_limit !== undefined) {
      resolved.time_limit = msg.time_limit;
    }
    else {
      resolved.time_limit = 0.0
    }

    if (msg.probability_success_threshold !== undefined) {
      resolved.probability_success_threshold = msg.probability_success_threshold;
    }
    else {
      resolved.probability_success_threshold = 0.0
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

module.exports = plan_for_goal_request;
