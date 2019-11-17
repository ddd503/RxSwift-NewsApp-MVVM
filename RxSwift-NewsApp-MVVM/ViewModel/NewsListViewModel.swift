//
//  NewsListViewModel.swift
//  RxSwift-NewsApp-MVVM
//
//  Created by kawaharadai on 2019/11/17.
//  Copyright © 2019 kawaharadai. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import Keys

class NewsListViewModel {
    private let requestApiUrlString = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=\(RxSwiftNewsAppMVVMKeys().apiKey)"
    private var disposeBag = DisposeBag()
    // 記事情報保持用
    var articles = BehaviorRelay<[Article]>(value: [])

    // Input
    func viewDidLoad() {
        guard let url = URL(string: requestApiUrlString) else { return }
        URLRequest.load(resource: Resource<APIResponse>(url: url))
            .subscribe(onNext: { [weak self] response in
                self?.articles.accept(response.articles)
            })
            .disposed(by: disposeBag)
    }
}
