//
//  CustomTableViewCell.swift
//  AppBase
//
//  Created by Natanael Alves Pereira on 04/04/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    static let identifier = "CustomTableViewCell"
  
    lazy var _switch: UISwitch = {
        let _switch = UISwitch()
        _switch.translatesAutoresizingMaskIntoConstraints = false
        _switch.onTintColor = .red
        _switch.isOn = false
        _switch.addTarget(self, action: #selector(onSwitchValueChanged), for: .valueChanged)
        
        return _switch
    }()
    
    lazy var labelText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.text = "Desabilitado cor Blue"
        return label
    }()
    
    lazy var imageEye: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "eye.slash")
        image.contentMode = .scaleAspectFit
        image.tintColor = .white
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .blue
        contentView.addSubview(_switch)
        contentView.addSubview(labelText)
        contentView.addSubview(imageEye)
        setupConstraints()
    }
    

    @objc func onSwitchValueChanged(_ teste: UISwitch) {
        if teste.isOn {
            self.contentView.backgroundColor = .red
            labelText.text = "Habilitado cor Red"
            imageEye.image = UIImage(systemName: "eye")
        }else{
            self.contentView.backgroundColor = .blue
            labelText.text = "Desabilitado cor Blue"
            imageEye.image = UIImage(systemName: "eye.slash")
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            _switch.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            _switch.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 3),
            _switch.heightAnchor.constraint(equalToConstant: 30),
            _switch.widthAnchor.constraint(equalToConstant: 40),
            
            labelText.topAnchor.constraint(equalTo: self._switch.topAnchor, constant: 10),
            labelText.leadingAnchor.constraint(equalTo: self._switch.trailingAnchor, constant: 20),
            
            imageEye.topAnchor.constraint(equalTo: self._switch.topAnchor),
            imageEye.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            imageEye.heightAnchor.constraint(equalToConstant: 40),
            imageEye.widthAnchor.constraint(equalToConstant: 40),
            
        
        ])
    }
}
