//
//  ViewController.swift
//  ReSwiftSample
//
//  Created by 佐藤賢 on 2018/02/15.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
  
  typealias StoreSubscriberStateType = AppState
  
  @IBOutlet weak var counterLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // 状態変化の監視開始
    mainStore.subscribe(self)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    // 状態変化の監視終了
    mainStore.unsubscribe(self)
  }
  
  @IBAction func increaseButtonTapped(_ sender: UIButton) {
    mainStore.dispatch(
      CounterActionIncrease()
    )
  }
  @IBAction func decreaseButtonTapped(_ sender: UIButton) {
    mainStore.dispatch(
      CounterActionDecrease()
    )
  }

  func newState(state: StoreSubscriberStateType) {
    counterLabel.text = "\(state.counter)"
  }
}
