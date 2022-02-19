//
//  HomeScreen.swift
//  InstagramDemo
//
//  Created by Muhammad Islamov on 18/02/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
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
                    }
                }.frame(height: 100)
                
                ItemPost(img_url: "image1")
                ItemPost(img_url: "image2")
                ItemPost(img_url: "image3")
                ItemPost(img_url: "image4")
            }.listStyle(PlainListStyle())
            .navigationBarItems(leading: Image(systemName: "camera"),
                                trailing: Button(action: {
                UserDefaults.standard.set(false, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }, label: {
                Image(systemName: "person").foregroundColor(Color.black)
            }))
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
