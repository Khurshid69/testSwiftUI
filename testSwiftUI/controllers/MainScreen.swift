//
//  MainScreen.swift
//  testSwiftUI
//
//  Created by user on 27/11/21.
//

import SwiftUI
import Lottie



struct Posting: View {
    var body: some View{
        Text("Hi")
    }
}

struct MainScreen: View{
    @EnvironmentObject var status: Status
    
    init(){
        
        UITabBar.appearance().barTintColor = .white
    }
    
    var body: some View {
        TabView(){
            NavigationView{
                List{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            AddStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                        }.frame(height: 96)
                    }
                    ItemPost(img_url: "bro")
                    ItemPost(img_url: "bro3")
                    ItemPost(img_url: "bro5")
                    ItemPost(img_url: "bro6")
                    ItemPost(img_url: "bro7")
                    ItemPost(img_url: "bro8")
                    ItemPost(img_url: "bro9")
                    ItemPost(img_url: "bro10")
                    
                }
                .listStyle(PlainListStyle())
                .navigationBarItems(leading: Image("Instagram Logo")
                                        .resizable()
                                        .frame(width: 116, height: 33),
                                    
                                    trailing: Button(action: {
                    UserDefaults.standard.removeObject(forKey: "userId")
                    status.listen()
                }, label: {
                    Image(systemName: "rectangle.portrait.and.arrow.right").foregroundColor(.black)
                        .navigationBarTitle("", displayMode: .inline)
                })
                                    
                )
            }
            //MARK: - TabBarItems
            
            .tabItem {
                Image("Home - Outline")
            }
            SearchPage()
                .tabItem {
                    Image("Search")
                }
            Posting()
                .tabItem {
                    Image("New photo - video")
                }
            LikePage()
                .tabItem {
                    Image("Heart - Outline")
                }
            MeView()
                .tabItem {
                    Image("Profile - Outline")
                }
        }.accentColor(.black)
        
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}










