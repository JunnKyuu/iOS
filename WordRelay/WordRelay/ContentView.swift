//
//  ContentView.swift
//  WordRelay
//
//  Created by JunKyu Lee on 9/23/24.
//

import SwiftUI

struct ContentView: View {
    let title: String = "끝말잇기 게임"
    @State var nextWord: String = ""
    
    var body: some View {
        VStack {
            // 제목
            Text(title)
                .font(.title)
                .bold()
                .padding(.vertical, 20)
                .padding(.horizontal, 16)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.teal)
                        .opacity(0.2)
                )
            
            // 입력 및 버튼
            HStack {
                TextField("단어를 입력하세요", text: $nextWord)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                    )
                Button(action: {
                    print(nextWord)
                }, label: {
                    Text("확인")
                        .foregroundStyle(Color.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 16)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue)
                        )
                })
            }
            .padding(.vertical, 20)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
