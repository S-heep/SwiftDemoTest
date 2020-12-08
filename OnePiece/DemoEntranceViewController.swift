//
//  DemoEntranceViewController.swift
//  OnePiece
//
//  Created by wangna on 2020/12/7.
//

import UIKit
import PureLayout

final class DemoEntranceViewController: UIViewController {
  
  private let identifier = "UITableViewCell"
  
  private lazy var tableView: UITableView = {
    let tableView = UITableView(frame: .zero, style: .grouped)
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
    tableView.delegate = self
    tableView.dataSource = self
    return tableView
  }()
  
  private let dataSource: [UIViewController] = [UIViewController(), UIViewController(), UIViewController(), UIViewController(), UIViewController(), UIViewController()]
  
  private let detailInfo: [String] = ["tableView", "collectionView", "network", "audio", "video", "animation"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupUI()
  }
  
}

extension DemoEntranceViewController {
  private func setupUI() {
    view.addSubview(tableView)
    tableView.autoPinEdgesToSuperviewEdges()
  }
}

extension DemoEntranceViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataSource.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    cell.textLabel?.text = detailInfo[indexPath.row]
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: false)
    navigationController?.pushViewController(dataSource[indexPath.row], animated: true)
  }
  
}
