//
//  AppState.swift
//  ReSwiftSample
//
//  Created by 佐藤賢 on 2018/02/15.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import ReSwift
import RealmSwift

struct AppState: StateType {
  var counter: Int = 0
}

class StoreState: Object {
  @objc dynamic var id = 0
  @objc dynamic var counter = 0
  
  override static func primaryKey() -> String? {
    return "id"
  } 
}
