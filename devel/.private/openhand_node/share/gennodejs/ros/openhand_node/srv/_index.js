
"use strict";

let OperatingMode = require('./OperatingMode.js')
let ReadLoad = require('./ReadLoad.js')
let ReadServos = require('./ReadServos.js')
let HoldServos = require('./HoldServos.js')
let MoveServos = require('./MoveServos.js')
let ReadSensors = require('./ReadSensors.js')
let ReadCurrent = require('./ReadCurrent.js')
let ReadTemperature = require('./ReadTemperature.js')
let TorqueServos = require('./TorqueServos.js')

module.exports = {
  OperatingMode: OperatingMode,
  ReadLoad: ReadLoad,
  ReadServos: ReadServos,
  HoldServos: HoldServos,
  MoveServos: MoveServos,
  ReadSensors: ReadSensors,
  ReadCurrent: ReadCurrent,
  ReadTemperature: ReadTemperature,
  TorqueServos: TorqueServos,
};
