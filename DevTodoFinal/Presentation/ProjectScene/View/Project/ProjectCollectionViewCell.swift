//
//  ProjectCollectionViewCell.swift
//  DevTodoFinal
//
//  Created by 나리강 on 2023/08/21.
//

import UIKit
import SnapKit

class ProjectCollectionViewCell: BaseCollectionViewCell {
    
    static let id = String(describing: ProjectCollectionViewCell.self)
    
    let imageView : UIImageView = {
        let view = UIImageView()
        view.tintColor = Assets.Color.grey.color
        view.layer.cornerRadius = 16
        view.layer.borderColor = Assets.Color.grey.color.cgColor
        return view
    }()
    
    override func configure() {
        self.addSubview(imageView)
    }
    
    override func setConstraints() {
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
