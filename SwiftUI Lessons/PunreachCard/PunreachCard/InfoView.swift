//
//  InfoView.swift
//  PunreachCard
//
//  Created by Punreach Rany on 2020/11/19.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.white)
            .frame(height: 50)
            //                    .foregroundColor(.white)
            .overlay((
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.20, green: 0.60, blue: 0.86))
                    Text(text)
                        .foregroundColor(.black)
                }
            ))
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
