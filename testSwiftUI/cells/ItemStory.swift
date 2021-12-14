//
//  ItemStory.swift
//  testSwiftUI
//
//  Created by user on 09/12/21.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        VStack{
            Image("dude")
                .resizable()
                .frame(width: 66, height: 66)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35)
                            .stroke(Color.red, lineWidth: 3))
            Text("John").font(Font.system(size: 13.5))
        }.padding(.trailing, 5)
            .frame(height: 74)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
