//
//  ItemPost.swift
//  InstagramDemo
//
//  Created by Muhammad Islamov on 19/02/22.
//

import SwiftUI

struct ItemPost: View {
    var img_url = "image2"
    var body: some View {
        VStack(alignment: .leading){
            //header
            HStack{
                Image("profile").resizable().frame(width: 50, height: 50).cornerRadius(25)
                HStack{
                    Text("_tewayev_abbos").font(Font.system(size: 14)).fontWeight(.bold)
                    Text("follow").font(Font.system(size: 14)).fontWeight(.bold).foregroundColor(Color.blue)
                    Spacer()
                    Image(systemName: "ellipsis")
                }
            }
            // post Image
            
            Image(img_url)
                .resizable()
                .scaledToFit()
                .padding(.leading, -20)
                .padding(.trailing, -20)
            
            // horizontal bar
            
            HStack(alignment: .center, spacing: 15){
                Image(systemName: "heart").resizable().frame(width: 20, height: 20)
                Image(systemName: "bubble.right").resizable().frame(width: 20, height: 20)
                Image(systemName: "paperplane").resizable().frame(width: 20, height: 20)
                Spacer()
                Image(systemName: "bookmark").resizable().frame(width: 20, height: 20)
            }.padding(.leading, -15)
            
            //description
            HStack{
                Text("Liked by").font(Font.system(size: 13.5))
                Text("baxtiyor_elboyev").font(Font.system(size: 14)).fontWeight(.bold)
                Text("and").font(Font.system(size: 13.5))
                Text("777 others").font(Font.system(size: 14)).fontWeight(.bold)
            }.padding(.bottom, 0.25).padding(.leading, -15)
            VStack(alignment: .leading){
                Text("islamovmukhammad_ 💣💣💣").font(Font.system(size: 13.5)).fontWeight(.bold)
                Text("rahimov_numon 🔥🔥🔥").font(Font.system(size: 13.5)).fontWeight(.bold)
                Text("View all 777 comments").font(Font.system(size: 13.5)).foregroundColor(Color.gray)
                    
            }.padding(.leading, -15)
        }
    }
}

struct ItemPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemPost()
    }
}
