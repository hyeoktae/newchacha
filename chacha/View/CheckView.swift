//
//  CheckView.swift
//  Chacha
//
//  Created by 차수연 on 26/06/2019.
//  Copyright © 2019 hyeoktae kwon. All rights reserved.
//

import UIKit

class CheckView: UIView {
  
  // MARK: - Properties
  
  private var stateText: ForCheckModel {
    return ForCheck.shared.amICheck
  }
  
  private var stateImageView: UIButton = {
    let imageView = UIButton()
    imageView.backgroundColor = .yellow
    imageView.imageView?.image = UIImage(named: "cancel")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.addTarget(self, action: #selector(didTapStateImageView(_:)), for: .touchUpInside)
    return imageView
  }()
  
  private var stateLabel: UILabel = {
    let label = UILabel()
    label.text = "아직 출첵 안함"
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupCheckView()
  }
  
  @objc private func didTapStateImageView(_ sender: UIButton) {
    print("didTapStateImageView")
    stateImageView.imageView?.image = UIImage(named: ForCheck.shared.amICheck.imgName)
    stateLabel.text = ForCheck.shared.amICheck.text
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    stateImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    stateImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
    stateImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    stateImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    
    stateLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    stateLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    stateLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    stateLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    
  }
  
  private func setupCheckView() {
    addSubview(stateImageView)
    addSubview(stateLabel)
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
