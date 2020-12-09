//
//  TabelViewDemoViewController.swift
//  OnePiece
//
//  Created by wangna on 2020/12/8.
//

import UIKit
import Alamofire

class TabelViewDemoViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    request()
  }
  
}

extension TabelViewDemoViewController: UITableViewDelegate {
  private func request() {
    AF.request("https://httpbin.org/get")
      .response { response in
        
        print("=============\(response)")
      }
  }
}
