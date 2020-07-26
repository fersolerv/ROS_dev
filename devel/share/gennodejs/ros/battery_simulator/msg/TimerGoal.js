// Auto-generated. Do not edit!

// (in-package battery_simulator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TimerGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_to_wait = null;
    }
    else {
      if (initObj.hasOwnProperty('time_to_wait')) {
        this.time_to_wait = initObj.time_to_wait
      }
      else {
        this.time_to_wait = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimerGoal
    // Serialize message field [time_to_wait]
    bufferOffset = _serializer.duration(obj.time_to_wait, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimerGoal
    let len;
    let data = new TimerGoal(null);
    // Deserialize message field [time_to_wait]
    data.time_to_wait = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'battery_simulator/TimerGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '861563d4afc38bffed1a53c61a474261';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # This is an action definition file, which has three parts: the goal, the
    # result, and the feedback.
    #
    # Part 1: the goal, to be sent by the client
    #
    # The amount of time we want to wait
    duration time_to_wait
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimerGoal(null);
    if (msg.time_to_wait !== undefined) {
      resolved.time_to_wait = msg.time_to_wait;
    }
    else {
      resolved.time_to_wait = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = TimerGoal;
