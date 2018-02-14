//
//  CounterReducer.swift
//  ReSwiftSample
//
//  Created by 佐藤賢 on 2018/02/15.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import ReSwift
import RealmSwift

func counterReducer(action: Action, state: AppState?) -> AppState {
  var state = state ?? AppState()
  let realm = try! Realm()
  
  let rstore = StoreState()
  
  switch action {
  case _ as CounterActionIncrease:
    state.counter += 1
    rstore.counter = state.counter
    try! realm.write() {
      realm.add(rstore, update: true)
    }
    
  case _ as CounterActionDecrease:
    state.counter -= 1
    rstore.counter = state.counter
    try! realm.write() {
      realm.add(rstore, update: true)
    }
    
  default:
    break
  }
  return state
  
}
