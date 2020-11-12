import SwiftUI

let LightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 243.0/255.0  )
let LightBlueColor = Color(red: 22.0/255.0, green: 160.0/255.0, blue: 133.0/255.0  )

//rgb(22, 160, 133)

let storedUsername = "Punreach"
let storedPassword = "123456"

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        
        ZStack {
            VStack{
                HelloText()
                UserImage()
                UsernameTextField(username: $username)
                PasswordSecuredField(password: $password)
                
                if authenticationDidFail {
                    Text("Information not Correct. Try Again.")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }else{
                    Text("")
                        .offset(y: -10)
                }
                
                Button(action: {
                    if self.username == storedUsername && self.password == storedPassword{
                        self.authenticationDidSucceed = true
                    }else{
                        self.authenticationDidFail = true
                    }
                }){
                    LoginButtonContent()
                }
                
                SocialLoginTitle()
                
                SocialLoginButtons()
            }
            if authenticationDidSucceed {
                Text("Login succeeded")
                    .font(.headline)
                    .frame(width: 250, height: 250)
                    .background(Color.yellow)
                    .cornerRadius(20.0)
                    .animation(Animation.default)
                    
            }
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HelloText: View {
    var body: some View{
        Text("Login Page")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("userImage")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 150, height: 150)
            .clipped()
            
            .cornerRadius(150)
            .overlay(Circle()
                        .stroke(Color.black, lineWidth: 2))
            
            .padding(.bottom, 75)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(LightBlueColor)
            .cornerRadius(35.0)
    }
}

struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(LightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecuredField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(LightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct SocialLoginTitle: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(Color.black.opacity(0.05))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 5)
            Text("Social Login")
            Rectangle()
                .fill(Color.black.opacity(0.05))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 5)
        }
        .padding(.vertical, 30)
    }
}

struct SocialLoginButtons: View {
    var body: some View {
        HStack{
            Button(action: {
                print("Facebook Pressed")
            }){
                Image("facebook")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 60, height: 60)
                    .clipped()
                    .cornerRadius(150)
                    .padding(.horizontal, 20)
            }
            Button(action: {
                print("Facebook Pressed")
            }){
                Image("google")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 60, height: 60)
                    .clipped()
                    .cornerRadius(150)
                    .padding(.horizontal, 20)
            }
            Button(action: {
                print("Kakao Pressed")
            }){
                Image("kakao")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 60, height: 60)
                    .clipped()
                    .cornerRadius(150)
                    .padding(.horizontal, 20)
            }
        }
    }
}
