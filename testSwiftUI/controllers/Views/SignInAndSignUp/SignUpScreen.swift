//
//  SignUpScreen.swift
//  testSwiftUI
//
//  Created by user on 01/12/21.
//

import SwiftUI

struct SignUpScreen: View {
    @Environment(\.presentationMode) var presentation
    
    @State var fullname = ""
    @State var email = ""
    @State var phone = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Image("logo").resizable().frame(width: 250, height: 130).aspectRatio(contentMode: .fill)
            
            TextField("Fullname", text: $fullname)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
            
            TextField("Email", text: $email)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
            
            TextField("Phone", text: $phone)
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
                
            } label: {
                HStack{
                    Spacer()
                    Text("Sign In").foregroundColor(.white)
                    Spacer()
                }
            }.frame(height: 45)
                .background(Color.red)
                .cornerRadius(30)
            
            Spacer()
            HStack{
                Text("Don't have an account?")
                Button("Sign Up"){
                    presentation.wrappedValue.dismiss()
                }
                .font(.system(size: 18))
            }
            
            
        }.padding()
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
