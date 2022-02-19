//
//  StarterScreen.swift
//  InstagramDemo
//
//  Created by Muhammad Islamov on 18/02/22.
//

import SwiftUI

struct StarterScreen: View {
    
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        VStack{
            if self.status {
                HomeScreen()
            } else {
                SignInScreen()
            }
        }
        .onAppear{
            let forName = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: forName, object: nil, queue: .main) { (_) in
                print("Call Notifitication Center")
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}
