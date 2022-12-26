//
//  CustomInputField.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/19/22.
//

import SwiftUI

struct CustomInputField: View {
    let imagename: String
    let placeholdertext: String
    var isSecuredField: Bool? = false
    @Binding var text: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imagename)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                if isSecuredField ?? false {
                    SecureField(placeholdertext, text: $text)
                }else{
                    TextField(placeholdertext, text: $text)
                }
            }
            Divider()
                .background(Color(.darkGray))
        }
       
        
        
        
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imagename: "envelope",
                         placeholdertext: "Email",
                         isSecuredField: false,
                         text: .constant(""))
    }
}
