//
//  NewsInfoCell.swift
//  RxSwift-NewsApp-MVVM
//
//  Created by kawaharadai on 2019/11/17.
//  Copyright © 2019 kawaharadai. All rights reserved.
//

import UIKit

class NewsInfoCell: UITableViewCell {

    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var subTitleLabel: UILabel!

    static var identifier: String {
        return String(describing: self)
    }

    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: .main)
    }

    func setInfo(info: Article) {
        titleLabel.text = info.title
        subTitleLabel.text = info.description
    }
}
