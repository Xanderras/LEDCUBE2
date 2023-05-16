//------------------------------------------------------------------------------
//
// LedCube.swift4a
// Swift For Arduino
//
// Created by xander rasschaert on 08/03/2023.
// Copyright © 2023 xander rasschaert. All rights reserved.
//
//------------------------------------------------------------------------------

import AVR

//------------------------------------------------------------------------------
// Setup / Functions
//------------------------------------------------------------------------------

// Insert code here to setup IO pins, define properties, add functions, etc.
pinMode(pin: D2, mode: OUTPUT)
pinMode(pin: D3, mode: OUTPUT)
pinMode(pin: D4, mode: OUTPUT)
pinMode(pin: D5, mode: OUTPUT)
pinMode(pin: D6, mode: OUTPUT)
pinMode(pin: D7, mode: OUTPUT)
pinMode(pin: D8, mode: OUTPUT)
pinMode(pin: D9, mode: OUTPUT)
pinMode(pin: D10, mode: OUTPUT)
pinMode(pin: D11, mode: OUTPUT)
pinMode(pin: D12, mode: OUTPUT)
pinMode(pin: D13, mode: OUTPUT)
//------------------------------------------------------------------------------
// Main Loop
//------------------------------------------------------------------------------

func allLayers() {
    digitalWrite(pin: D11, value: HIGH)
    digitalWrite(pin: D12, value: HIGH)
    digitalWrite(pin: D13, value: HIGH)
}

func noLayer() {
    digitalWrite(pin: D11, value: LOW)
    digitalWrite(pin: D12, value: LOW)
    digitalWrite(pin: D13, value: LOW)
}

func rotate() {
    allLayers()
    digitalWrite(pin: D5, value: HIGH)
    digitalWrite(pin: D6, value: HIGH)
    digitalWrite(pin: D7, value: HIGH)
    delay(milliseconds: 100)
    empty()
    digitalWrite(pin: D2, value: HIGH)
    digitalWrite(pin: D6, value: HIGH)
    digitalWrite(pin: D10, value: HIGH)
    delay(milliseconds: 100)
    empty()
    digitalWrite(pin: D3, value: HIGH)
    digitalWrite(pin: D6, value: HIGH)
    digitalWrite(pin: D9, value: HIGH)
    delay(milliseconds: 100)
    empty()
    digitalWrite(pin: D4, value: HIGH)
    digitalWrite(pin: D6, value: HIGH)
    digitalWrite(pin: D8, value: HIGH)
    delay(milliseconds: 100)
    empty()
    noLayer()
}

func swirl() {
    digitalWrite(pin: D2, value: HIGH)
    delay(milliseconds: 100)
    digitalWrite(pin: D3, value: HIGH)
    delay(milliseconds: 100)
    digitalWrite(pin: D4, value: HIGH)
    delay(milliseconds: 100)
    digitalWrite(pin: D7, value: HIGH)
    delay(milliseconds: 100)
    digitalWrite(pin: D10, value: HIGH)
    delay(milliseconds: 100)
    digitalWrite(pin: D9, value: HIGH)
    delay(milliseconds: 100)
    digitalWrite(pin: D8, value: HIGH)
    delay(milliseconds: 100)
    digitalWrite(pin: D5, value: HIGH)
    delay(milliseconds: 100)
    digitalWrite(pin: D6, value: HIGH)
    delay(milliseconds: 100)
    digitalWrite(pin: D2, value: LOW)
    delay(milliseconds: 100)
    digitalWrite(pin: D3, value: LOW)
    delay(milliseconds: 100)
    digitalWrite(pin: D4, value: LOW)
    delay(milliseconds: 100)
    digitalWrite(pin: D7, value: LOW)
    delay(milliseconds: 100)
    digitalWrite(pin: D10, value: LOW)
    delay(milliseconds: 100)
    digitalWrite(pin: D9, value: LOW)
    delay(milliseconds: 100)
    digitalWrite(pin: D8, value: LOW)
    delay(milliseconds: 100)
    digitalWrite(pin: D5, value: LOW)
    delay(milliseconds: 100)
    digitalWrite(pin: D6, value: LOW)
    delay(milliseconds: 100)
    empty()
}

func empty() {
  digitalWrite(pin: 2, value: LOW);
  digitalWrite(pin: 3, value: LOW);
  digitalWrite(pin: 4, value: LOW);
  digitalWrite(pin: 5, value: LOW);
  digitalWrite(pin: 6, value: LOW);
  digitalWrite(pin: 7, value: LOW);
  digitalWrite(pin: 8, value: LOW);
  digitalWrite(pin: 9, value: LOW);
  digitalWrite(pin: 10, value: LOW);
}  

while mainLoopRunning {

    // Insert code to be run in main loop here.
    digitalWrite(pin: D13, value: HIGH)
    swirl()
    digitalWrite(pin: D12, value: HIGH)
    swirl()
    digitalWrite(pin: D11, value: HIGH)
    swirl()
    digitalWrite(pin: D11, value: LOW)
    swirl()
    digitalWrite(pin: D12, value: LOW)
    swirl()
    digitalWrite(pin: D13, value: LOW)
    for i in 0...6 {
        rotate()
    }
    
}

//------------------------------------------------------------------------------

