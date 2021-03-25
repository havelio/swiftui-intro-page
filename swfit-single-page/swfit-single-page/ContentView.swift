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
    
    var body: some View {
        VStack {
            TabView {
                PageContentView()
                PageContentView()
                PageContentView()
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .padding(.bottom, 40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
