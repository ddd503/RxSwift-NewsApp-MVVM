//
//  NewsListViewController.swift
//  RxSwift-NewsApp-MVVM
//
//  Created by kawaharadai on 2019/11/17.
//  Copyright © 2019 kawaharadai. All rights reserved.
//

import UIKit
import RxSwift

class NewsListViewController: UIViewController, UITableViewDelegate {

    private var viewModel = NewsListViewModel()
    private var disposeBag = DisposeBag()

    @IBOutlet weak var newsListTableView: UITableView! {
        didSet {
            newsListTableView.delegate = self
            newsListTableView.register(NewsInfoCell.nib(), forCellReuseIdentifier: NewsInfoCell.identifier)
            newsListTableView.tableFooterView = UIView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        viewModel.requestDataSource()
    }

    private func bind() {
        // 以下、UITableViewDelegateの準拠は必須
        // viewModel側で保持しているデータソースとtableViewのDataSourceをbindする（UITableViewDataSource役）
        viewModel.articles
            .bind(to: newsListTableView.rx.items(cellIdentifier: NewsInfoCell.identifier,
                                                 cellType: NewsInfoCell.self)) { (row, element, cell) in
                                                    cell.setInfo(info: element)
        }
        .disposed(by: disposeBag)

        // リスト表示している要素をタップに合わせて購読する（UITableViewDelegateのdidSelect役）
        newsListTableView.rx
            .modelSelected(Article.self)
            .subscribe(onNext:  { article in
                print("Tapped Article Title: \(article.title)")
            })
            .disposed(by: disposeBag)
    }
}
