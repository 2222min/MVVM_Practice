//
//  ViewController.swift
//  MVVM_Practice
//
//  Created by mobile on 2022/01/12.
//

import UIKit

class OnePieceViewController: UIViewController {
    
    let viewModel = OnePieceViewModel()
    
    // Charater ImageView
    let characterImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .clear
        return imageView
    }();
    
    // Characer Name Label
    let characterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }();
    
    // Character Reward Label
    let rewardLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        bindData()
    }
    
    private func setupViews(){
        view.backgroundColor = .black
        view.addSubview(characterImage)
        view.addSubview(characterLabel)
        view.addSubview(rewardLabel)
        NSLayoutConstraint.activate([
            self.characterImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.characterImage.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50),
            self.characterImage.heightAnchor.constraint(equalToConstant: 300),
            self.characterImage.widthAnchor.constraint(equalToConstant: 300),
            self.characterLabel.centerXAnchor.constraint(equalTo: self.characterImage.centerXAnchor),
            self.characterLabel.topAnchor.constraint(equalTo: self.characterImage.bottomAnchor, constant: 10),
            self.rewardLabel.centerXAnchor.constraint(equalTo: self.characterImage.centerXAnchor),
            self.rewardLabel.topAnchor.constraint(equalTo: self.characterLabel.bottomAnchor, constant: 20)
        ])
    }
    
    // ViewModel의 Character 타입 변수의 값을 ImageView의 image에 바인딩
    private func bindData(){
        characterImage.image = viewModel.character.image
        characterLabel.text = viewModel.character.name
        rewardLabel.text = viewModel.character.reward
    }
    
    
}

