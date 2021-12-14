//
//  ItemPost.swift
//  testSwiftUI
//
//  Created by user on 09/12/21.
//

import SwiftUI

struct ItemPost: View {
    var img_url = "bro"
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("dude")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .cornerRadius(25)
                HStack{
                    Text("John -")
                        .font(Font.system(size: 14))
                        .fontWeight(.bold)
                    Text("follow")
                        .font(Font.system(size: 13))
                        .foregroundColor(Color.blue)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .padding()
                }
            }
            
            
            Image(img_url)
                .resizable()
                .scaledToFit()
                .padding(.leading, -20)
                .padding(.trailing, -20)
            
            HStack(alignment: .center){
                Image("Like")
                    .resizable()
                    .frame(width:25, height: 22)
                    .padding(.leading, -5)
                
                Image("Comment - Outline")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .padding(2)
                Image("Direct")
                    .resizable()
                    .frame(width: 23.01, height: 20.16)
                    .padding(2)
                Spacer()
                Image("Collect")
                    .resizable()
                    .frame(width: 19, height: 22.59)
            }
            
            Text("Liked by Alex and 49 others").font(Font.system(size: 13.5)).fontWeight(.bold)
                .padding(.bottom, 3)
                .padding(.leading, -5)
            Text("TI remember how back in the day we would dream of golden numbers such as 6666 as our phone or car number. Whoever had such numbers would be cosa")
                .padding(.leading, -10)

                .lineLimit(4)
            
        }
    }
}

struct ItemPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemPost()
    }
}
