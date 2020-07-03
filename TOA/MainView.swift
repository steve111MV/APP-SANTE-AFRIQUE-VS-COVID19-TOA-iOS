//
//  MainView.swift
//  TOA
//
//  Created by Steven on 7/2/20.
//  Copyright © 2020 Coolectif TOA. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        //localized textes
        GeometryReader { geometry in
            
            ScrollView(.vertical, showsIndicators: false){
                
                //
                ZStack(alignment: .top){
                    
                    Image("covid_worms_bg")
                        .resizable()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 242.5, alignment: .top)
                    
                    VStack(alignment: .center, spacing: 0){
                        
                        HStack{
                            
                            Spacer()
                            
                            Image("logo_round")
                                .resizable().aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .shadow(color: Color.white, radius: 3, x: 0, y: 3)
                            
                            Spacer()
                        }
                        .padding(EdgeInsets(top:  geometry.safeAreaInsets.top + 70, leading: .zero, bottom: .zero, trailing: .zero))
                        
                        
                        Spacer(minLength: 2)
                        
                        HStack{
                            Text("mainIntro")
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                                .padding(.all, 8)
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                            .background(Color("colorBookBackground"))
                            .cornerRadius(6)
                            .padding(.horizontal, 15.9)
                        //.shadow(color: Color.gray, radius: 1, x: 0, y: 1)
                        
                        Spacer(minLength: 15)
                        
                        HStack{
                            
                            LottieView(animationName: "covid_armor").aspectRatio(contentMode: ContentMode.fit)
                                .frame(width: 120, height: 100)
                                .padding(.all, 0).offset(x: -15, y: 0)
                            
                            Spacer(minLength: 0)
                            
                            VStack{
                                Spacer()
                                Text("mainPreventionButtonTitle")
                                    .multilineTextAlignment(.center)
                                    .font(.headline).foregroundColor(Color.white).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                Spacer()
                            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                                .background(Color("colorBtnGreen"))
                            
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                            .background(Color.white)
                            .cornerRadius(5)
                            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                        
                        
                        Spacer(minLength: 15)
                        
                        HStack{
                            
                            HStack{
                                LottieView(animationName: "covid_doctor").aspectRatio(contentMode: ContentMode.fit)
                                    .frame(width: 90, height: 65) //this lottie view has no padding, we force it with the two frames : one on the view and the other on its direct parent
                                
                            }.frame(width: 120, height: 100) //This size is equivalent to the previous lottieView frame
                            
                            Spacer(minLength: 0)
                            
                            VStack{
                                Spacer()
                                Text("mainAnalysisButtonTitle")
                                    .multilineTextAlignment(.center)
                                    .font(.headline).foregroundColor(Color.white).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                Spacer()
                            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                                .background(Color("colorBtnBlue"))
                            
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                            .background(Color.white)
                            .cornerRadius(5)
                            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                            .onTapGesture {
                                
                        }
                            .offset(x: 0, y: 0) //normal padding affects the two main views size. this trick is good to ruce the visual padding to 10
                        
                        Spacer(minLength: 2)
                        
                        Text("mainAnalysisComment")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .offset(x: 0, y: 0) //no padding is needed bewteen the last button and this text. The purpose is make them look like one
                            .padding(.horizontal, 13)
                        
                        
                        // }
                    }
                }
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}