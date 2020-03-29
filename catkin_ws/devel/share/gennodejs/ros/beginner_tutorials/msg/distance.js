// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class distance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.raw = null;
      this.inch = null;
      this.cm = null;
    }
    else {
      if (initObj.hasOwnProperty('raw')) {
        this.raw = initObj.raw
      }
      else {
        this.raw = 0;
      }
      if (initObj.hasOwnProperty('inch')) {
        this.inch = initObj.inch
      }
      else {
        this.inch = 0.0;
      }
      if (initObj.hasOwnProperty('cm')) {
        this.cm = initObj.cm
      }
      else {
        this.cm = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type distance
    // Serialize message field [raw]
    bufferOffset = _serializer.uint8(obj.raw, buffer, bufferOffset);
    // Serialize message field [inch]
    bufferOffset = _serializer.float32(obj.inch, buffer, bufferOffset);
    // Serialize message field [cm]
    bufferOffset = _serializer.float32(obj.cm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type distance
    let len;
    let data = new distance(null);
    // Deserialize message field [raw]
    data.raw = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [inch]
    data.inch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cm]
    data.cm = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/distance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5266ff5b846e219dfd622ac9a1b131ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 raw
    float32 inch
    float32 cm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new distance(null);
    if (msg.raw !== undefined) {
      resolved.raw = msg.raw;
    }
    else {
      resolved.raw = 0
    }

    if (msg.inch !== undefined) {
      resolved.inch = msg.inch;
    }
    else {
      resolved.inch = 0.0
    }

    if (msg.cm !== undefined) {
      resolved.cm = msg.cm;
    }
    else {
      resolved.cm = 0.0
    }

    return resolved;
    }
};

module.exports = distance;
