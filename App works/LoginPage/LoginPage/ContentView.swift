//
//  ContentView.swift
//  LoginPage
//
//  Created by Punreach Rany on 2020/11/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //         ContentView()
        Home()
    }
}

struct Home : View {
    @State var email = ""
    @State var pass = ""
    @State var rem = false
    @State var height : CGFloat = 0
    
    var body: some View{
        VStack(alignment: .leading){
            Color.black.opacity(0.03).edgesIgnoringSafeArea(.all)
            VStack{
                VStack(alignment: .leading){
                    HStack(alignment: .top, spacing: 0){
                        Text("Logo")
                        //Spacer()
                        Text("      ")
                        Text("Picture Cool")
//                                            Image("logo")
//                                                .resizable()
//                                                    .scaledToFill() // add if you need
//                                                    .frame(width: 30.0, height: 30.0) // as per your requirement
//                                                    .clipped()
//                                                .offset(x: 20.0, y: 20.0)
//                                            Image("image_01")
//                                                .resizable()
//                                                    .scaledToFill() // add if you need
//                                                    .frame(width: 30.0, height: 30.0) // as per your requirement
//                                                    .clipped()
//                                                .offset(x: 20.0, y: 20.0)
                    }
                }
                VStack(alignment: .leading){
                    Text("Login")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Username")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.top, 20)
                    
                    VStack{
                        TextField("", text: self.$email)
                        Rectangle()
                            .fill(self.email == "" ? Color.black.opacity(0.08) : Color("Color1"))
                            .frame(height: 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    Text("Password")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.top, 20)
                    
                    VStack{
                        TextField("", text: self.$pass)
                        Rectangle()
                            .fill(self.pass == "" ? Color.black.opacity(0.08) : Color("Color1"))
                            .frame(height: 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    HStack{
                        Spacer()
                        Button(action: {
                            
                        }){
                            Text("Forgot Password")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("Color1"))
                        }
                        
                    }
                    .padding(.top)
                    .padding(.bottom, 10)
                }
                .foregroundColor(Color.black.opacity(0.7))
                .padding()
                .background(Color.white)
                .overlay(Rectangle().stroke(Color.black.opacity(0.03), lineWidth: 2).shadow(radius: 4))
                .padding(.horizontal)
//                .padding(.top, -80)
                // for Overview
                
                VStack{
                    Button(action: {
                        self.rem.toggle()
                    }){
                        HStack(spacing : 10){
                            HStack{
                                Circle()
                                    .stroke(LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1")]), startPoint: .top, endPoint: .bottom), lineWidth: 2)
                                    .frame(width: 20, height: 20)
                                if self.rem{
                                    Circle()
                                        .fill(Color("Color1"))
                                        .frame(width: 10, height: 10)
                                }
                                Text("Remember me")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.black.opacity(0.7))
                            }
                        }
                        .padding(.leading, 10)
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                            Text("SIGNIN")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .padding(.horizontal, 35)
                                .background(LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1")]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(5)
                        }
                    }
                    .padding(.top)
                    .padding(.horizontal)
                    
                    HStack{
                        Rectangle()
                            .fill(Color.black.opacity(0.05))
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 5)
                        Text("Social Login")
                        Rectangle()
                            .fill(Color.black.opacity(0.05))
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 5)
                    }
                    .padding(.top)
                    
                    // Social Media Login Buttons...
                    
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                        Button(action: {
                            
                        }) {
                            
                            Image("google")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 35, height: 35)
                                .padding(8)
                                //                                                          .background(Color.red)
                                .clipShape(Circle())
                            
                        }
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("facebook")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 35, height: 35)
                                .padding(8)
                                //                                                          .background(Color("Color1"))
                                .clipShape(Circle())
                            
                        }
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("kakao")
                                .renderingMode(.original)
                                // sice were not adding padding so size is 48...
                                .resizable()
                                .frame(width: 48, height: 48)
                            
                        }
                    }
                    .padding(.top)
                    
                    HStack{
                        
                        Text("New User?")
                            .foregroundColor(Color.black.opacity(0.7))
                            .fontWeight(.bold)
                        
                        Button(action: {
                            
                        }) {
                            
                            Text("SignUp")
                                .foregroundColor(Color("Color1"))
                                .fontWeight(.bold)
                        }
                    }
                    .padding(.top,20)
                    .padding(.bottom)
                    
                    Spacer()
                }
                
                // since all edges are ignored...
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            }
        }
        // moving view up...
        .padding(.bottom,250)
        .background(Color.black.opacity(0.03).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardDidShowNotification, object: nil, queue: .main) { (not) in
                
                let data = not.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue
                
                let height = data.cgRectValue.height - (UIApplication.shared.windows.first?.safeAreaInsets.bottom)!
                
                self.height = height
                
                // removing outside safeaera height...
                print(height)
            }
            
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardDidHideNotification, object: nil, queue: .main) { (_) in
                
                print("hidden")
                
                self.height = 0
            }
//            Spacer()
        }
        
    }
}

