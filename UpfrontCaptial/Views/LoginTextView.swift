//
//  LoginTextView.swift
//  UpfrontCaptial
//
//  Created by Devon Adams on 3/16/21.
//

import SwiftUI

struct LoginTextView: View {
    var placeholder: Text
    var color: Color
    @Binding var text: String
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty { placeholder }
            TextField("", text: $text)
        }.underlineTextField(color: color)
    }
}

struct LoginTextView_Previews: PreviewProvider {
    static var previews: some View {
        
        LoginTextView(placeholder: Text("Username").foregroundColor(.gray), color: .black, text: .constant("")).previewLayout(.sizeThatFits)
            .padding()
    }
}
