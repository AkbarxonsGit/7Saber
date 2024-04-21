//
//  TextFieldNextButton.swift
//  Registration
//
//  Created by Asadbek Yoldoshev on 21/04/24.
//

import SwiftUI

struct TextFieldNextButton: View {
    
    @StateObject var vm = RegisterMobillAppViewModel()
    
    var body: some View {
        ZStack {
            HStack {
                VStack {
                    ZStack(alignment: .leading) {
                        Text("Phone number or Email")
                            .foregroundColor(.gray)
                            .font(.system(size: vm.numberTextFieldIsEditing ? 11 : 16))
                            .offset(y: vm.numberTextFieldIsEditing ? -26 : 0)
                        
                        TextField("", text: $vm.numberText, onEditingChanged: { editing in
                            withAnimation(.easeInOut(duration: .animationDuration.normal)) {
                                vm.numberTextFieldIsEditing = editing
                            }
                        })
                        .textFieldStyle(PlainTextFieldStyle())
                        .frame(width: 313, height: 48)
                        .keyboardType(.emailAddress)
                    }
                    .overlay(Rectangle().frame(height: 1).padding(.top, 8).foregroundColor(.gray), alignment: .bottom)
                    Button(action: {
                        print("NEXT Button Tapped")
                        
                        withAnimation(.easeInOut(duration: .animationDuration.normal)) {
                            vm.isCodeViewPresented = true
                        }
                        
                    }, label: {
                        Text("NEXT")
                    })
                    .frame(width: 313, height: 56)
                    .background(vm.numberText.isEmpty ? Color.gray : Color(red: 10/255, green: 10/255, blue: 10/255))
                    .foregroundColor(.white)
                    .cornerRadius(100)
                    .padding(.top, 20)
                    Spacer()
                }
                .padding(.leading, 40)
                Spacer()
            }
        }
    }
}

#Preview {
    TextFieldNextButton()
}
