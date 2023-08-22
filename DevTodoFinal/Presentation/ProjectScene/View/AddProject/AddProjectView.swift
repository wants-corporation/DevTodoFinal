//
//  AddProjectView.swift
//  DevTodoFinal
//
//  Created by 나리강 on 2023/08/21.
//

import UIKit
import SnapKit

class AddProjectView: BaseView {
    
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.showsVerticalScrollIndicator = false
        return view
    }()
    
    let contentView = UIView()
    
    let projectTitle: UITextField = {
        let title = UITextField()
        title.placeholder = "프로젝트명"
        title.backgroundColor = .white
        title.layer.cornerRadius = 16
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        title.leftView = paddingView
        title.leftViewMode = .always
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
        view.isLayoutMarginsRelativeArrangement = true
        view.spacing = 10
        view.distribution = .equalSpacing
        view.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return view
    }()
    
    let language: UITextField = {
        let view = UITextField()
        view.placeholder = "언어"
        return view
    }()
    
    let skill: UITextField = {
        let view = UITextField()
        view.placeholder = "스킬"
        return view
    }()
    
    let secondView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.layer.cornerRadius = 16
        view.backgroundColor = .white
        view.isLayoutMarginsRelativeArrangement = true
        view.spacing = 10
        view.distribution = .equalSpacing
        view.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return view
    }()
    
    let company: UITextField = {
        let view = UITextField()
        view.placeholder = "소속"
        return view
    }()
    
    let contribution: UITextField = {
       let view = UITextField()
        view.placeholder = "기여도"
        return view
    }()

    let responsibility: UITextField = {
        let view = UITextField()
        view.placeholder = "담당업무"
        return view
    }()
    
    let thirdView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.layer.cornerRadius = 16
        view.backgroundColor = .white
        view.isLayoutMarginsRelativeArrangement = true
        view.spacing = 10
        view.distribution = .equalSpacing
        view.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return view
    }()
    
    let startDate: UITextField = {
        let view = UITextField()
        view.placeholder = "시작일"
        return view
    }()
    
    let endDate: UITextField = {
        let view = UITextField()
        view.placeholder = "종료일"
        return view
    }()
    
    let contentTextView: UITextView = {
        let view = UITextView()
        view.layer.cornerRadius = 16
        return view
    }()
    
    override func configure() {
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        [projectTitle, projectImage, firstView, secondView, thirdView, contentTextView].forEach {
            contentView.addSubview($0)
        }
        [language, skill].forEach {
            firstView.addArrangedSubview($0)
        }
        [company, contribution, responsibility].forEach {
            secondView.addArrangedSubview($0)
        }
        [startDate, endDate].forEach {
            thirdView.addArrangedSubview($0)
        }
    }
    
    override func setConstraints() {
        scrollView.snp.makeConstraints { make in
            make.edges.equalTo(safeAreaLayoutGuide)
        }
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        projectTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(50)
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
        
        secondView.snp.makeConstraints { make in
            make.top.equalTo(firstView.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        thirdView.snp.makeConstraints { make in
            make.top.equalTo(secondView.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        contentTextView.snp.makeConstraints { make in
            make.top.equalTo(thirdView.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(120)
            make.bottom.equalToSuperview().inset(20)
        }
    }
}
