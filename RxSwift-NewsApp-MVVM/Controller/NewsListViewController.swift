//
//  NewsListViewController.swift
//  RxSwift-NewsApp-MVVM
//
//  Created by kawaharadai on 2019/11/17.
//  Copyright © 2019 kawaharadai. All rights reserved.
//

import UIKit

class NewsListViewController: UIViewController {

    @IBOutlet weak var newsListTableView: UITableView! {
        didSet {
            newsListTableView.delegate = self
            newsListTableView.dataSource = self
            newsListTableView.register(NewsInfoCell.nib(), forCellReuseIdentifier: NewsInfoCell.identifier)
            newsListTableView.tableFooterView = UIView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension NewsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsInfoCell.identifier, for: indexPath) as! NewsInfoCell
        // 仮の値を代入
        cell.setInfo(info: Article(title: "タイトル", description: "記事詳細"))
        return cell
    }
}

extension NewsListViewController: UITableViewDelegate {}
