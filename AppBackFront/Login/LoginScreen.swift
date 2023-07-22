//
//  LoginScreen.swift
//  AppBackFront
//
//  Created by Premiersoft on 19/07/23.
//

import UIKit

class LoginScreen: UIView {
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BGLogin")
        
        return image
    }( )
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BFLogin")
        return image;
    }()
    
    lazy var loginLabel: UILabel = {
        let label = UILabel( )
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.text = "BF NFT"
        return label
    }( )
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel( )
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .center
        label.text = "O marketplace de NFTs da Backfront Academy"
        return label
    }( )
    
    lazy var loginTextField: UITextField = {
        let tf = UITextField( )
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue:52/255, alpha: 1.0)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.attributedPlaceholder = NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.4)])
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 12
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        
        
        return tf
     }( )
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField( )
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue:52/255, alpha: 1.0)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.isSecureTextEntry = true
        tf.attributedPlaceholder = NSAttributedString(string: "Senha", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.4)])
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 12
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        
        
        return tf
     }( )
    
    lazy var recoverPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Recuperar senha", for: .normal)
        button.setTitleColor(UIColor(red: 231/255, green: 48/255, blue:214/255, alpha: 1.0), for: .normal)
        button.addTarget(self, action: #selector(tappedRecoverPasswordButton), for: .touchUpInside)
       return button
    }( )
    
    lazy var subLoginImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "gradient3")
        image.clipsToBounds = true
        image.layer.cornerRadius = 8
        image.contentMode = .scaleToFill
        return image;
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
       return button
    }( )
    
    lazy var lineView: UIView = {
        let view = UIView( )
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }( )
    
    lazy var signInMetamasView: UIView = {
        let view = UIView( )
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1.0).cgColor;
        
        return view
    }( )
    
    lazy var signInMetaMaskImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        return image;
    }()
    
    lazy var signInMetaMaskLabel: UILabel = {
        let label = UILabel( )
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.text = "Entrar com a Metamask"
        return label
    }( )
    
    
    @objc func tappedRecoverPasswordButton(_ sender: UIButton) {
        print(#function)
    }
    
    @objc func tappedLoginButton(_ sender: UIButton) {
        print(#function)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements( ){
        addSubview(subImageView)
        addSubview(logoAppImageView)
        addSubview(loginLabel)
        addSubview(descriptionLabel)
        addSubview(loginTextField)
        addSubview(passwordTextField)
        addSubview(recoverPasswordButton)
        addSubview(subLoginImageView)
        addSubview(loginButton)
        addSubview(lineView)
        addSubview(signInMetamasView)
        
        signInMetamasView.addSubview(signInMetaMaskImageView)
        signInMetaMaskImageView.addSubview(signInMetaMaskLabel)
    }
    
    private func configConstraints( ){
        NSLayoutConstraint.activate([
        
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 55),
            logoAppImageView.heightAnchor.constraint(equalToConstant: 100),
            logoAppImageView.widthAnchor.constraint(equalToConstant: 100),
            logoAppImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginLabel.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor, constant:  16),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            loginTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant:  32),
            loginTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  20),
            loginTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -20),
            loginTextField.heightAnchor.constraint(equalToConstant:40),
            
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo:loginTextField.heightAnchor),
            
            recoverPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8),
            recoverPasswordButton.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            
            recoverPasswordButton.heightAnchor.constraint(equalToConstant: 16),
            subLoginImageView.topAnchor.constraint(equalTo: recoverPasswordButton.bottomAnchor, constant: 36),
            subLoginImageView.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            subLoginImageView.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            subLoginImageView.heightAnchor.constraint(equalToConstant: 43),
            
            loginButton.topAnchor.constraint(equalTo: subLoginImageView.topAnchor),
            loginButton.leadingAnchor.constraint(equalTo: subLoginImageView.leadingAnchor),
            loginButton.rightAnchor.constraint(equalTo: subLoginImageView.rightAnchor),
            loginButton.bottomAnchor.constraint(equalTo: subLoginImageView.bottomAnchor),
            lineView.topAnchor.constraint(equalTo: subLoginImageView.bottomAnchor, constant: 48),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 64),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -64),
            lineView.heightAnchor.constraint(equalToConstant: 0.5),
            signInMetamasView.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant:  48),
            signInMetamasView.leadingAnchor.constraint(equalTo: subLoginImageView.leadingAnchor),
            signInMetamasView.trailingAnchor.constraint(equalTo: subLoginImageView.trailingAnchor),
            signInMetamasView.heightAnchor.constraint(equalToConstant: 48),
            signInMetaMaskImageView.leadingAnchor.constraint(equalTo: signInMetamasView.leadingAnchor,
                                                             constant: 48),
            signInMetaMaskImageView.centerYAnchor.constraint(equalTo: signInMetamasView.centerYAnchor),
            signInMetaMaskImageView.heightAnchor.constraint(equalToConstant: 20),
            signInMetaMaskImageView.widthAnchor.constraint(equalToConstant: 20),
            signInMetaMaskLabel.leadingAnchor.constraint(equalTo: signInMetaMaskImageView.trailingAnchor, constant: 16),
            signInMetaMaskLabel.centerYAnchor.constraint(equalTo: signInMetamasView.centerYAnchor)
            
            
            
            
            
        ])
    }
    

}
