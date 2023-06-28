//
//  SplashScreen.swift
//  KWK ClubHub
//
//  Created by Angela Magtoto on 6/28/23.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.75
    @State private var opacity = 0.6
    
    var body: some View {
        if isActive {
            directory()
        } else {
            VStack {
                VStack {
                    Text("ClubHub")
                        .font(.system(size: 70))
                        .fontWeight(.heavy)
                        .foregroundColor(.black.opacity(0.8))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }

    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
