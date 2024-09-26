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
    @State var words: Array<String> = ["물컵", "컵받침", "침착맨" ]
    @State var showAlert: Bool = false
    
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
                    if(words.last?.last!.lowercased() == nextWord.first?.lowercased()) {
                        words.append(nextWord)
                    } else {
                        showAlert = true
                    }
                    nextWord = ""

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
            .alert("끝말이 이어지는 단어를 입력해주세요.", isPresented: $showAlert) {
                Button("확인", role: .cancel) {
                    showAlert = false
                }
            }
            
            // words View
            List {
                ForEach(words.reversed(), id: \.self) { word in
                    Text(word)
                        .font(.title2)
                }
            }
            .listStyle(.plain)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
