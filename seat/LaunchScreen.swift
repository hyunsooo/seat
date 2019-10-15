//
//  ContentView.swift
//  seat
//
//  Created by FURSYS on 2019/10/15.
//  Copyright © 2019 FURSYS. All rights reserved.
//

import SwiftUI

struct LaunchScreen: View {
    
    @Binding var show: Bool
    
    var body: some View {
       
        VStack(spacing: -100) {
            Image("logo_up")
                .aspectRatio(contentMode: .fit)
                .offset(y: show ? 0 : 23)
                .animation(Animation.easeInOut.delay(0.1))
            Image("logo_down")
                .aspectRatio(contentMode: .fit)
        }
        
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    @State static var flag = true
    static var previews: some View {
        LaunchScreen(show: $flag)
    }
}
