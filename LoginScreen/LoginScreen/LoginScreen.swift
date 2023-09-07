//
//  LoginScreen.swift
//  LoginScreen
//
//  Created by Yago de Moura Silva on 06/09/23.
//

import UIKit

class LoginScreen: UIView {
    
    // MARK: - UI Metrics
    private enum ViewMetrics {
        // TO DO
    }
    
    // MARK: - UI Components
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BGLogin")
        return image
    }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BFLogin")
        return image
    }()
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "BF NFT"
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        label.text  = "O marketplace de NFTs da Backfront Academy"
        return label
    }()
    
    lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0) /* #343434 */
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.attributedPlaceholder = NSAttributedString(
            string: "Login",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)]
        )
        textField.textColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.white.cgColor
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0) /* #343434 */
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.isSecureTextEntry = true
        textField.attributedPlaceholder = NSAttributedString(
            string: "Senha",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)]
        )
        textField.textColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.white.cgColor
        return textField
    }()
    
    lazy var recoverPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Recuperar senha?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(UIColor(red: 231/255, green: 48/255, blue: 214/255, alpha: 1.0) /* #e730d6 */, for: .normal)
        return button
    }()
    
    lazy var subLoginView: UIImageView = {
      let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "gradient3")
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 8
        return image
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.titleLabel?.textAlignment = .center
       return button
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var signInMetamaskView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.borderColor = UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1.0).cgColor /* #cf00c0 */
        view.layer.borderWidth = 2
       return view
    }()
    
    lazy var signInMetamaskImageView:UIImageView = {
      let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        return image
    }()
    
    lazy var signInMetamaskLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Entrar com a Metamask"
        return label
    }()
    
    //MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Layout Setup
    private func buildHierarchy() {
        self.addSubview(subImageView)
        self.addSubview(logoImageView)
        self.addSubview(loginLabel)
        self.addSubview(descriptionLabel)
        self.addSubview(loginTextField)
        self.addSubview(passwordTextField)
        self.addSubview(recoverPasswordButton)
        self.addSubview(subLoginView)
        self.addSubview(loginButton)
        self.addSubview(lineView)
        self.addSubview(signInMetamaskView)
        self.signInMetamaskView.addSubview(signInMetamaskImageView)
        self.signInMetamaskView.addSubview(signInMetamaskLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoImageView.topAnchor.constraint(equalTo:  safeAreaLayoutGuide.topAnchor, constant: 55),
            logoImageView.heightAnchor.constraint(equalToConstant: 108),
            logoImageView.widthAnchor.constraint(equalToConstant: 108),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            loginLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 16),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor,constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
            
            loginTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor,constant: 32),
            loginTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            loginTextField.heightAnchor.constraint(equalToConstant: 39),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor,constant: 11),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 39),
            
            recoverPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 9),
            recoverPasswordButton.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            recoverPasswordButton.heightAnchor.constraint(equalToConstant: 16),
            
            loginButton.topAnchor.constraint(equalTo: recoverPasswordButton.bottomAnchor,constant: 36),
            loginButton.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 41),
            
            subLoginView.leadingAnchor.constraint(equalTo: loginButton.leadingAnchor),
            subLoginView.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor),
            subLoginView.topAnchor.constraint(equalTo: loginButton.topAnchor),
            subLoginView.bottomAnchor.constraint(equalTo: loginButton.bottomAnchor),
            
            lineView.topAnchor.constraint(equalTo: subLoginView.bottomAnchor,constant: 48),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 64),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -64),
            lineView.heightAnchor.constraint(equalToConstant: 0.5),
            
            signInMetamaskView.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 48),
            signInMetamaskView.leadingAnchor.constraint(equalTo: loginButton.leadingAnchor),
            signInMetamaskView.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor),
            signInMetamaskView.heightAnchor.constraint(equalToConstant: 41),
            
            signInMetamaskImageView.leadingAnchor.constraint(equalTo: signInMetamaskView.leadingAnchor,constant: 53),
            signInMetamaskImageView.centerYAnchor.constraint(equalTo: signInMetamaskView.centerYAnchor),
            signInMetamaskImageView.heightAnchor.constraint(equalToConstant: 20),
            signInMetamaskImageView.widthAnchor.constraint(equalToConstant: 20),
            
            signInMetamaskLabel.leadingAnchor.constraint(equalTo: signInMetamaskImageView.trailingAnchor,constant: 17),
            signInMetamaskLabel.centerYAnchor.constraint(equalTo: signInMetamaskView.centerYAnchor),
        ])
    }
}
