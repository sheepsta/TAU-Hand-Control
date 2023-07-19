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

class plan_for_goal_response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planned_actions = null;
      this.planned_path = null;
      this.reached_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('planned_actions')) {
        this.planned_actions = initObj.planned_actions
      }
      else {
        this.planned_actions = [];
      }
      if (initObj.hasOwnProperty('planned_path')) {
        this.planned_path = initObj.planned_path
      }
      else {
        this.planned_path = [];
      }
      if (initObj.hasOwnProperty('reached_goal')) {
        this.reached_goal = initObj.reached_goal
      }
      else {
        this.reached_goal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type plan_for_goal_response
    // Serialize message field [planned_actions]
    bufferOffset = _arraySerializer.float64(obj.planned_actions, buffer, bufferOffset, null);
    // Serialize message field [planned_path]
    bufferOffset = _arraySerializer.float64(obj.planned_path, buffer, bufferOffset, null);
    // Serialize message field [reached_goal]
    bufferOffset = _serializer.bool(obj.reached_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type plan_for_goal_response
    let len;
    let data = new plan_for_goal_response(null);
    // Deserialize message field [planned_actions]
    data.planned_actions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [planned_path]
    data.planned_path = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [reached_goal]
    data.reached_goal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.planned_actions.length;
    length += 8 * object.planned_path.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hand_control/plan_for_goal_response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99e054cfbf7412c793674c19bfc96a83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] planned_actions
    float64[] planned_path
    bool reached_goal
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new plan_for_goal_response(null);
    if (msg.planned_actions !== undefined) {
      resolved.planned_actions = msg.planned_actions;
    }
    else {
      resolved.planned_actions = []
    }

    if (msg.planned_path !== undefined) {
      resolved.planned_path = msg.planned_path;
    }
    else {
      resolved.planned_path = []
    }

    if (msg.reached_goal !== undefined) {
      resolved.reached_goal = msg.reached_goal;
    }
    else {
      resolved.reached_goal = false
    }

    return resolved;
    }
};

module.exports = plan_for_goal_response;
