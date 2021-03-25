//
//  PageContentView.swift
//  swfit-single-page
//
//  Created by Havelio on 25/03/21.
//

import SwiftUI

struct PageContentView: View {
    
    @State var colorScheme: ColorScheme
    
    var body: some View {
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
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

struct PageContentView_Previews: PreviewProvider {
    static var previews: some View {
        PageContentView(colorScheme: .light)
    }
}
