// Auto-generated. Do not edit!

// (in-package husky_run.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HuskyVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linearVelocityX = null;
      this.angularVelocityZ = null;
    }
    else {
      if (initObj.hasOwnProperty('linearVelocityX')) {
        this.linearVelocityX = initObj.linearVelocityX
      }
      else {
        this.linearVelocityX = 0.0;
      }
      if (initObj.hasOwnProperty('angularVelocityZ')) {
        this.angularVelocityZ = initObj.angularVelocityZ
      }
      else {
        this.angularVelocityZ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HuskyVelocity
    // Serialize message field [linearVelocityX]
    bufferOffset = _serializer.float32(obj.linearVelocityX, buffer, bufferOffset);
    // Serialize message field [angularVelocityZ]
    bufferOffset = _serializer.float32(obj.angularVelocityZ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HuskyVelocity
    let len;
    let data = new HuskyVelocity(null);
    // Deserialize message field [linearVelocityX]
    data.linearVelocityX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angularVelocityZ]
    data.angularVelocityZ = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'husky_run/HuskyVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3810a70d8bd9757d7145a2f9707db9e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 linearVelocityX
    float32 angularVelocityZ
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HuskyVelocity(null);
    if (msg.linearVelocityX !== undefined) {
      resolved.linearVelocityX = msg.linearVelocityX;
    }
    else {
      resolved.linearVelocityX = 0.0
    }

    if (msg.angularVelocityZ !== undefined) {
      resolved.angularVelocityZ = msg.angularVelocityZ;
    }
    else {
      resolved.angularVelocityZ = 0.0
    }

    return resolved;
    }
};

module.exports = HuskyVelocity;
