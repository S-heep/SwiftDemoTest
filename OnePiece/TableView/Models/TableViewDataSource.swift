//
//  TableViewDataSource.swift
//  OnePiece
//
//  Created by wangna on 2020/12/8.
//

import UIKit

final class TableViewDataSource: NSObject, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
  
  
}
