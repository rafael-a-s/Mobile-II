import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LoginView()
        }
    }
}

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isAuthenticated: Bool = false 
    @State private var isActive: Bool = false
    @State private var isShowingSignup: Bool = false
    var body: some View {
        VStack {
            Text("Login")
                .font(.title)

            TextField("Usuario", text: $username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            SecureField("Senha", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            NavigationLink(
                destination: HomeViewRepresentable(),
                isActive: $isActive,
                label: {
                    EmptyView()
                })
                .hidden() // Esconde a navegação real

            Button(action: {
                if authenticate() {
                    isAuthenticated = true
                    isActive = true
                } else {
                    print("Login failed")
                }
            }) {
                Text("Login")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            NavigationLink(
                            destination: CadastroView(),
                            isActive: $isShowingSignup,
                            label: {
                                Text("Criar conta")
                                    .foregroundColor(.blue)
                            })
        }
        .padding()
    }

    func authenticate() -> Bool {
        return true
    }
}

struct HomeViewRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return HomeViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
       
    }
}
