//
//  PasswordTextView.swift
//  UpfrontCaptial
//
//  Created by Devon Adams on 3/16/21.
//

import SwiftUI

struct PasswordTextView: View {
    var placeholder: Text
    var color: Color
    @Binding var text: String
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty { placeholder }
            SecureField("", text: $text)
        }.underlineTextField(color: color)
    }
}

struct PasswordTextView_Previews: PreviewProvider {
    static var previews: some View {
    PasswordTextView(placeholder: Text("Username").foregroundColor(.gray), color: .black, text: .constant("")).previewLayout(.sizeThatFits)
            .padding()
    }
}
