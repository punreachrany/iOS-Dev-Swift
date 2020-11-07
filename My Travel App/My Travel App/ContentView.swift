import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        TabView{
            Home().tabItem { Image("home").font(.title) }
            Text("activity").tabItem { Image("activity").font(.title) }
            Text("search").tabItem { Image("search").font(.title) }
            Text("setting").tabItem { Image("Setting").font(.title) }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body : some View{
        VStack(alignment: .leading, spacing: 12){
            HStack{
                Button(action: {
                    
                }){
                    Image("menu").renderingMode(.original)
                }
                Spacer()
                Button(action: {
                    
                }){
                    Image("Profile").renderingMode(.original)
                }
            }
            
            Text("Make your life a journey").fontWeight(.heavy).font(.largeTitle).padding(.top,15)
            
            HStack{
                Button(action: {
                    
                }){
                    Text("Nature").fontWeight(.heavy).foregroundColor(.black)
                }
                Spacer()
                Button(action: {
                    
                }){
                    Text("Historical Spots").fontWeight(.heavy).foregroundColor(.gray)
                }
                Spacer()
                Button(action: {
                    
                }){
                    Text("Artifical Spots").fontWeight(.heavy).foregroundColor(.gray)
                }
            }.padding([.top],30).padding(.bottom, 15)
            
            MiddleView()
            
            BottomView().padding(.top, 10)
            
            
            

            
        }.padding()
    }
}

struct Detail : View {
    var body: some View{
        VStack{
            Image("topbg").resizable()
                .frame(width : UIScreen.main.bounds.width, height: 500)
                .aspectRatio(1.35, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .offset(y: -200)
                .padding(.bottom, -200)
            GeometryReader{geo in
                VStack(alignment: .leading){
                    detailTop()
                    detailMiddle()
                    detailBottom()
                }
            }.background(Color.white)
            .clipShape(Rounded())
            .padding(.top, -75)
        }
    }
}

struct detailTop : View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            HStack{
                VStack(alignment: .leading){
                    Text("Forest").fontWeight(.heavy).font(.largeTitle)
                    Text("Camping").fontWeight(.heavy).font(.largeTitle)
                }
                Spacer()
                Text("2500 Won").foregroundColor(Color("bg")).font(.largeTitle)
            }
        }.padding()
    }
}

struct detailMiddle : View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Image("map").renderingMode(.original)
                Text("Seoul Forest").foregroundColor(Color("bg"))
            }
            HStack(spacing : 8){
                ForEach(0..<5){_ in
                    Image(systemName: "star.fill").font(.body).foregroundColor(.yellow)
                }
            }
            Text("People").fontWeight(.heavy)
            Text("Number of People In Your Group").foregroundColor(.gray)
            HStack(spacing : 6){
                ForEach(0..<5){i in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        Text("\(i+1)").foregroundColor(.white).padding(20)
                    }.background(Color("bg"))
                    .cornerRadius(8)
                }
            }
        }.padding(.horizontal, 15)
    }
}

struct detailBottom : View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("Description").fontWeight(.heavy)
            Text("Seoul Forest (서울숲) · Information Introduction Opened on June 18, 2005, Seoul Forest had previously undergone a series of changes on Ttukseom Island.").foregroundColor(.gray)
            
            HStack(spacing : 8){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Image("Save").renderingMode(.original)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    HStack(spacing : 6){
                        Text("Book your experience")
                        Image("arrow").renderingMode(.original)
                    }.foregroundColor(.white)
                    .padding(.vertical,15)
                    .padding(.horizontal, 10)
                    
                }.background(Color("bg"))
                .cornerRadius(8)
                
            }.padding(.top,15)
        }.padding()
    }
}

struct Rounded : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: [.topLeft, .topRight],
                                cornerRadii: CGSize(width: 40, height: 40)
        )
        return Path(path.cgPath)
    }
}


struct BottomView : View {
    var body: some View{
        VStack{
            HStack{
                Text("Wanna try something else?").fontWeight(.heavy)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Text("View all").foregroundColor(.gray)
                }
            }.padding([.top], 15)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing : 35){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        VStack(spacing : 8){
                            Image("mcard1").renderingMode(.original)
                            Text("Mountain").foregroundColor(.gray)
                        }
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        VStack(spacing : 8){
                            Image("mcard2").renderingMode(.original)
                            Text("Acient").foregroundColor(.gray)
                        }
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        VStack(spacing : 8){
                            Image("mcard3").renderingMode(.original)
                            Text("Sport").foregroundColor(.gray)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        VStack(spacing : 8){
                            Image("mcard4").renderingMode(.original)
                            Text("Camping").foregroundColor(.gray)
                        }
                    }
                }.padding(.leading, 20)
                .padding([.top,.bottom],15)
                
            }
        }
    }
}

struct MiddleView :View {
    @State var showImage1 = false
    @State var showImage2 = false
    
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:15){
                VStack(alignment: .leading, spacing: 5){
                    Button(action: {
                        self.showImage1.toggle()
                    }){
                        Image("Card1").renderingMode(.original)
                    }
                    Text("River Sightseeing").fontWeight(.heavy)
                    HStack(spacing: 5){
                        Image("map").renderingMode(.original)
                        Text("Mekong River, KH").foregroundColor(.gray)
                    }
                }
//                .sheet(isPresented: $showImage1){
//                    Detail()
//
//            }
                VStack(alignment: .leading, spacing: 5){
                    Button(action: {
                        self.showImage2.toggle()
                    }){
                        Image("Card2").renderingMode(.original)
                    }
                    Text("Forest Camping").fontWeight(.heavy)
                    HStack(spacing: 5){
                        Image("map").renderingMode(.original)
                        Text("Seoul Forest, KR").foregroundColor(.gray)
                    }
                }.sheet(isPresented: $showImage2){
                    Detail()

            }
        }
        }
    }
}
