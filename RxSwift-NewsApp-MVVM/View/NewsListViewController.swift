//
//  NewsListViewController.swift
//  RxSwift-NewsApp-MVVM
//
//  Created by kawaharadai on 2019/11/17.
//  Copyright © 2019 kawaharadai. All rights reserved.
//

import UIKit
import RxSwift
import Keys

class NewsListViewController: UIViewController {

    private var viewModel = NewsListViewModel()
    private var disposeBag = DisposeBag()

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
        // binding
        viewModel.articles
            .asObservable()
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] _ in
                self?.newsListTableView.reloadData()
            }).disposed(by: disposeBag)

        viewModel.viewDidLoad()
    }
}

extension NewsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.articles.value.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsInfoCell.identifier, for: indexPath) as! NewsInfoCell
        cell.setInfo(info: viewModel.articles.value[indexPath.row])
        return cell
    }
}

extension NewsListViewController: UITableViewDelegate {}
