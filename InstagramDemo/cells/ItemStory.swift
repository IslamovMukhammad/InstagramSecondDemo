//
//  ItemStory.swift
//  InstagramDemo
//
//  Created by Muhammad Islamov on 19/02/22.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        VStack{
            Image("profile").resizable().frame(width: 70, height: 70)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.red, lineWidth: 2))
            Text("Abbos").font(Font.system(size: 13.5)).fontWeight(.bold)
        }.padding(.trailing, 10).frame(height: 100)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
