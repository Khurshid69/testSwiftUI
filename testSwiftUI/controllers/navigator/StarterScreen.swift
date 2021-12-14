
//
//  StarterScreen.swift
//  testSwiftUI
//
//  Created by user on 08/12/21.
//

import SwiftUI

struct StarterScreen: View {
    @EnvironmentObject var status: Status
    
    var body: some View {
        VStack{
            if self.status.userId != nil{
                MainScreen()
            }else{
                SignInScreen()
            }
        }
        .onAppear {
            status.listen()
            
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}

