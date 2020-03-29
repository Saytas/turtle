// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AdcToDistanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.adc = null;
    }
    else {
      if (initObj.hasOwnProperty('adc')) {
        this.adc = initObj.adc
      }
      else {
        this.adc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdcToDistanceRequest
    // Serialize message field [adc]
    bufferOffset = _serializer.int16(obj.adc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdcToDistanceRequest
    let len;
    let data = new AdcToDistanceRequest(null);
    // Deserialize message field [adc]
    data.adc = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/AdcToDistanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f506cc1be2a1e30d652f2010679b9c5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 adc
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdcToDistanceRequest(null);
    if (msg.adc !== undefined) {
      resolved.adc = msg.adc;
    }
    else {
      resolved.adc = 0
    }

    return resolved;
    }
};

class AdcToDistanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inches = null;
      this.cm = null;
    }
    else {
      if (initObj.hasOwnProperty('inches')) {
        this.inches = initObj.inches
      }
      else {
        this.inches = 0.0;
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
    // Serializes a message object of type AdcToDistanceResponse
    // Serialize message field [inches]
    bufferOffset = _serializer.float32(obj.inches, buffer, bufferOffset);
    // Serialize message field [cm]
    bufferOffset = _serializer.float32(obj.cm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdcToDistanceResponse
    let len;
    let data = new AdcToDistanceResponse(null);
    // Deserialize message field [inches]
    data.inches = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cm]
    data.cm = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/AdcToDistanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b156c80b7b5144adc6d5f0583ac291f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 inches
    float32 cm
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdcToDistanceResponse(null);
    if (msg.inches !== undefined) {
      resolved.inches = msg.inches;
    }
    else {
      resolved.inches = 0.0
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

module.exports = {
  Request: AdcToDistanceRequest,
  Response: AdcToDistanceResponse,
  md5sum() { return '518d9b1ad9a9efc93a551a303cf3656d'; },
  datatype() { return 'beginner_tutorials/AdcToDistance'; }
};
