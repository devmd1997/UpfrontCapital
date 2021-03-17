//
//  LoginView.swift
//  UpfrontCaptial
//
//  Created by Devon Adams on 3/8/21.
//

import SwiftUI

struct LoginView: View {
    //MARK: - Properties
    @State var username: String = ""
    @State var password: String = ""
    //MARK: - Body
    var body: some View {
        NavigationView{
        ZStack{
            Color("Background").edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Image("logo")
                Text("Become Music Royalty.").foregroundColor(.white)
                Spacer()
                LoginTextView(placeholder: Text("Username").foregroundColor(.white), color: Color("Gray2"), text: $username)
                PasswordTextView(placeholder: Text("Password").foregroundColor(.white), color: Color("Gray2"), text: $password)
                Spacer()
                LoginButton()
                Spacer()
                HStack(spacing: 8){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Forgot Something?").foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .frame(width: 100)
                    })
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Sign Up").foregroundColor(.white)
                            .underline()
                    })
                }.padding(.horizontal, 15)
            }//: Vstack
        }//: ZStack
        }.navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

//MARK: - Preview
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
