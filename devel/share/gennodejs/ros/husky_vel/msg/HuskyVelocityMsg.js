// Auto-generated. Do not edit!

// (in-package husky_vel.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HuskyVelocityMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linearVelocity = null;
      this.angularVelocity = null;
    }
    else {
      if (initObj.hasOwnProperty('linearVelocity')) {
        this.linearVelocity = initObj.linearVelocity
      }
      else {
        this.linearVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('angularVelocity')) {
        this.angularVelocity = initObj.angularVelocity
      }
      else {
        this.angularVelocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HuskyVelocityMsg
    // Serialize message field [linearVelocity]
    bufferOffset = _serializer.float32(obj.linearVelocity, buffer, bufferOffset);
    // Serialize message field [angularVelocity]
    bufferOffset = _serializer.float32(obj.angularVelocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HuskyVelocityMsg
    let len;
    let data = new HuskyVelocityMsg(null);
    // Deserialize message field [linearVelocity]
    data.linearVelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angularVelocity]
    data.angularVelocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'husky_vel/HuskyVelocityMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '352405445bc14611a0dc96feba55c2c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 linearVelocity
    float32 angularVelocity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HuskyVelocityMsg(null);
    if (msg.linearVelocity !== undefined) {
      resolved.linearVelocity = msg.linearVelocity;
    }
    else {
      resolved.linearVelocity = 0.0
    }

    if (msg.angularVelocity !== undefined) {
      resolved.angularVelocity = msg.angularVelocity;
    }
    else {
      resolved.angularVelocity = 0.0
    }

    return resolved;
    }
};

module.exports = HuskyVelocityMsg;
