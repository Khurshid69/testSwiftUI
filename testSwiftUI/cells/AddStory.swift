//
//  AddStory.swift
//  testSwiftUI
//
//  Created by user on 09/12/21.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image("dude")
                    .resizable()
                    .frame(width: 66, height: 66)
                    .cornerRadius(35)
                Image("Add story")
                    .frame(width: 24, height: 24)
            }
            

            Text("Your story").font(Font.system(size: 13.5))
        }.padding(.trailing, 10).frame(height: 90)
    }
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
