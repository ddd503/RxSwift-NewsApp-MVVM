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

    private var disposeBag = DisposeBag()
    private var ariticles = [Article]()

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
        requestNewsFeeds()
    }

    func requestNewsFeeds() {
        let urlString = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=\(RxSwiftNewsAppMVVMKeys().apiKey)"
        guard let url = URL(string: urlString) else { return }
        let resource = Resource<APIResponse>(url: url)

        URLRequest.load(resource: resource)
            .subscribe(onNext: { [weak self] apiResponse in
                self?.ariticles = apiResponse.articles
                DispatchQueue.main.async {
                    self?.newsListTableView.reloadData()
                }
            })
            .disposed(by: disposeBag)
    }

}

extension NewsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ariticles.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsInfoCell.identifier, for: indexPath) as! NewsInfoCell
        cell.setInfo(info: ariticles[indexPath.row])
        return cell
    }
}

extension NewsListViewController: UITableViewDelegate {}
