//
//  SignInScreen.swift
//  testSwiftUI
//
//  Created by user on 01/12/21.
//

import SwiftUI

struct SignInScreen: View {
    @EnvironmentObject var status: Status
    @State var isModal = false
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                
                Image("dude")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                
                TextField("Email", text: $email)
                    .frame(height: 45)
                    .padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(30)
                
                SecureField("Password", text: $password)
                    .frame(height: 45)
                    .padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(30)
                
                Button {
                    UserDefaults.standard.set("swift@gmail.com", forKey: "userId")
                    status.listen()
                } label: {
                    HStack{
                        Spacer()
                        Text("Sign In")
                            .foregroundColor(.white)
                        Spacer()
                    }
                }.frame(height: 45)
                    .background(Color.red)
                    .cornerRadius(30)
                
                Spacer()
                
                // MARK: - Pushing Screen
                
                NavigationLink(destination: SignUpScreen()){
                    HStack{
                        Text("Don't have an account?").foregroundColor(Color.black)
                        Text("SignUp").bold()
                    }
                }
                
                
            }.padding()
                .navigationBarTitle("Login", displayMode: .inline)
            //                .navigationBarItems(leading: Image("logo").resizable().frame(width: 125, height: 70))
            
        }
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
          
    }
}
