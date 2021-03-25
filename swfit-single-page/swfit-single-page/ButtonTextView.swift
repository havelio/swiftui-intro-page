//
//  ButtonTextView.swift
//  swfit-single-page
//
//  Created by Havelio on 25/03/21.
//

import SwiftUI

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
