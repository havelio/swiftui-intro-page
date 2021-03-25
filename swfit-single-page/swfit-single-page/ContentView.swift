//
//  ContentView.swift
//  swfit-single-page
//
//  Created by Havelio on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colorScheme: ColorScheme = .light
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.blue.opacity(0.8))
                    .frame(maxHeight: 400)
                    .shadow(color: .black, radius: 4, x: 0, y: 0)
                
                Text("Lorem Title")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                
                Spacer()
                
                HStack {
                    Button(action: {
                        self.colorScheme = .light
                    }, label: {
                        ButtonTextView(text: "Light", disable: colorScheme == .light)
                    })
                    Button(action: {
                        self.colorScheme = .dark
                    }, label: {
                        ButtonTextView(text: "Dark", disable: colorScheme == .dark)
                    })
                }
            }
            .padding(EdgeInsets(top: 50, leading: 20, bottom: 30, trailing: 20))
        }
        .background(Color.gray.opacity(0.2))
        .ignoresSafeArea()
        .preferredColorScheme(colorScheme)
    }
}

struct ButtonTextView: View {
    
    let text: String
    let disable: Bool
    
    var body: some View {
        if disable {
            Text(text)
                .fontWeight(.black)
                .padding(20)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .cornerRadius(20)
        } else {
            Text(text)
                .fontWeight(.black)
                .padding(20)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.gray)
                .cornerRadius(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
