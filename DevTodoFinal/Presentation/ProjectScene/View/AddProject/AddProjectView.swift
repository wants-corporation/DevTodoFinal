//
//  AddProjectView.swift
//  DevTodoFinal
//
//  Created by 나리강 on 2023/08/21.
//

import UIKit
import SnapKit

class AddProjectView: BaseView {
    
    let projectTitle: UITextField = {
        let title = UITextField()
        title.placeholder = "프로젝트명"
        return title
    }()
    
    let projectImage: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 16
        image.backgroundColor = .white
        return image
    }()
    
    let firstView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.layer.cornerRadius = 16
        view.backgroundColor = .white
        return view
    }()
    
    let secondView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.layer.cornerRadius = 16
        view.backgroundColor = .white
        return view
    }()
    
    let thirdView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.layer.cornerRadius = 16
        view.backgroundColor = .white
        return view
    }()
    
    let contentTextView: UITextView = {
        let view = UITextView()
        return view
    }()
    
    override func configure() {
        [projectTitle, projectImage, firstView, secondView, thirdView, contentTextView].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        projectTitle.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        projectImage.snp.makeConstraints { make in
            make.top.equalTo(projectTitle.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(150)
        }
        
        firstView.snp.makeConstraints { make in
            make.top.equalTo(projectImage.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
    }
}
