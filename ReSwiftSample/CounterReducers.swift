//
//  CounterReducers.swift
//  ReSwiftSample
//
//  Created by 佐藤賢 on 2018/02/15.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import UIKit
import ReSwift

struct CounterReducers: Reducer {
  typealias ReducerStateType = AppState
  func handleAction(action: Action, state: ReducerStateType) -> ReducerStateType {
    var state = state ?? AppState()
    switch action {
    case _ as CounterActionIncrease:
      state.counter += 1
    case _ as CounterActionDecrease:
      state.counter -= 1
    default:
      break
    }
    return state
  }
}
