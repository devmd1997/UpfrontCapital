//
//  LoginButton.swift
//  UpfrontCaptial
//
//  Created by Devon Adams on 3/16/21.
//

import SwiftUI

struct LoginButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Login").font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 50)
                .padding(.vertical, 20)
                .background(Color("NeonGreen"))
                .cornerRadius(20, corners: [.topLeft, .bottomRight])
        })
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton().previewLayout(.sizeThatFits).padding()
    }
}
