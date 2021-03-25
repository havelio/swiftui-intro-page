//
//  ContentView.swift
//  swfit-single-page
//
//  Created by Havelio on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let pageControl = UIPageControl.appearance()
        pageControl.currentPageIndicatorTintColor = .label
        pageControl.pageIndicatorTintColor = .separator
   }
    
    @State private var colorScheme: ColorScheme = .light
    
    var body: some View {
        VStack {
            TabView {
                PageContentView(colorScheme: colorScheme)
                PageContentView(colorScheme: colorScheme)
                PageContentView(colorScheme: colorScheme)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))

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
            .padding()
            .padding(.bottom, 20)
        }
//        .background(Color.gray.opacity(0.1))
        .ignoresSafeArea()
        .preferredColorScheme(colorScheme)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
