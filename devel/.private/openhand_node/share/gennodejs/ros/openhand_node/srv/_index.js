
"use strict";

let MoveServos = require('./MoveServos.js')
let OperatingMode = require('./OperatingMode.js')
let ReadTemperature = require('./ReadTemperature.js')
let HoldServos = require('./HoldServos.js')
let TorqueServos = require('./TorqueServos.js')
let ReadLoad = require('./ReadLoad.js')
let ReadSensors = require('./ReadSensors.js')
let ReadServos = require('./ReadServos.js')
let ReadCurrent = require('./ReadCurrent.js')

module.exports = {
  MoveServos: MoveServos,
  OperatingMode: OperatingMode,
  ReadTemperature: ReadTemperature,
  HoldServos: HoldServos,
  TorqueServos: TorqueServos,
  ReadLoad: ReadLoad,
  ReadSensors: ReadSensors,
  ReadServos: ReadServos,
  ReadCurrent: ReadCurrent,
};
