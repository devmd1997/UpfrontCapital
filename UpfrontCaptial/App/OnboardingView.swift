//
//  Onboarding.swift
//  UpfrontCaptial
//
//  Created by Devon Adams on 3/16/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    var items = [OnboardingItems(image:"Journey", text:"Track your growth"),
    OnboardingItems(image: "heart_music", text: "Invest in your favorite artits"),
    OnboardingItems(image: "scale_vector_map", text: "Keep up with latest trends in the industry")]
    //MARK: - Body
    var body: some View {
        NavigationView{
        ZStack{
            Color("Background").edgesIgnoringSafeArea(.all)
            VStack{
                TabView(){
                    ForEach(items){
                        item in
                        VStack{
                            Image(item.image)
                                .padding(.vertical, 90)
                            Text(item.text)
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                    }
                }//: Tabview
                .tabViewStyle(PageTabViewStyle())
                .accentColor(.blue)
                .padding(.vertical, 0)
                .onAppear{
                    setupApperance()
                }//: onAppear
                NavigationLink(destination: LoginView()){
                        Text("Skip")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .foregroundColor(.white)
                            .background(Color("Gray2"))
                            .cornerRadius(20)
                    .padding(.vertical, 100)
                }
               
            }//: Vstack
        }//: Zstack
        }//: Navigation View
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct OnboardingItems: Identifiable {
    var id = UUID()
    
    let image: String
    let text: String
}

func setupApperance(){
    UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color("Purple 1"))
    UIPageControl.appearance().pageIndicatorTintColor = UIColor(Color("Gray1"))
}
