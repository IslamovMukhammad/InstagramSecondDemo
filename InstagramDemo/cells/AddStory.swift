//
//  AddStory.swift
//  InstagramDemo
//
//  Created by Muhammad Islamov on 19/02/22.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image("profile").resizable().frame(width: 70, height: 70)
                    .cornerRadius(35)
                Image("ic_add").resizable().frame(width: 24, height: 24)
            }
           
               
            Text("Abbos").font(Font.system(size: 13.5)).fontWeight(.bold)
        }.padding(.trailing, 10).frame(height: 100)
    }
    }


struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
