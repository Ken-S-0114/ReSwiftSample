//
//  CounterAction.swift
//  ReSwiftSample
//
//  Created by 佐藤賢 on 2018/02/15.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import ReSwift
// 関数ではなく構造体（Actionは状態の宣言、Reducerに渡されて処理を判別するために利用される）
struct CounterActionIncrease: Action {}
struct CounterActionDecrease: Action {}
