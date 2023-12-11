
import UIKit
import CoreData



class LoginViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var senhaLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Attributes

 
     private var username: String = ""
     private var password: String = ""
    private var isAuthenticated: Bool = false
     private var isActive: Bool = false
     private var isShowingSignup: Bool = false
    
    // MARK: - IBActions
    
    @IBAction func registrarButton(_ sender: UIButton) {
        if (self.emailTextField.text=="teste@email.com" && self.passwordTextField.text=="123") {
            isAuthenticated = true
            isActive = true
        } else {
            print("Login failed")
        }
            
    }

}

