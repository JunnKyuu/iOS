//
//  TaxView.swift
//  swiftUI_review
//
//  Created by JunKyu Lee on 1/24/24.
//

import SwiftUI

struct TaxView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Spacer()

                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("이달의 돈 버는 혜택")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                            Text("네이버페이 8,000포인트 증정")
                        }
                        .padding([.leading, .top, .bottom],20)
                        Spacer()
                        Image(systemName: "dollarsign.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .padding([.trailing],20)
                            .foregroundColor(.white)
                    }
                    .background(Color.blue)
                    .frame(maxWidth: .infinity)
                    Spacer()
                    Text("이런 서비스도 있어요")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 20, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading],20)

                    Button {
                        print("Button Tapped")
                    } label: {
                        HStack {
                            VStack(alignment: .leading, spacing: 30) {
                                Text("이준규님의 환급이 진행중이에요")
                                    .multilineTextAlignment(.leading)
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.black)
                                    .padding([.leading],10)
                                Text("내 진행상태 확인하기")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .padding([.leading],10)
                            }
                            .frame(maxWidth: 230, minHeight: 80, alignment: .leading)
                            VStack {
                                Spacer()
                                Image(systemName: "alarm.waves.left.and.right.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(.yellow)
                                    .padding([.bottom], 15)
                            }
                        }
                        .frame(width: 350, height: 140)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
//                    3
                    HStack(spacing: 15) {
                        Button {
                            print("Button Tapped")
                        } label: {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("부가세 신고")
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.black)
                                Text("부가세 확인해보기")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                HStack {
                                    Spacer()
                                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.black)
                                        .padding([.trailing, .top], 10)
                                }
                            }
                            .padding([.leading],20)
                        }
                        .frame(width: 170, height: 140)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))

                        Button {
                            print("Button Tapped")
                        } label: {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("연말정산 환급")
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.black)
                                Text("가족이 쓴 돈 받기")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                HStack {
                                    Spacer()
                                    Image(systemName: "plus.magnifyingglass")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.black)
                                        .padding([.trailing, .top], 10)
                                }
                            }
                            .padding([.leading],20)
                        }
                        .frame(width: 170, height: 140)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    .frame(width: 360, height: 150)
                    Spacer()
                    Text("쩜. 돈이 되는 이야기")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 20, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading],20)
                    
                    VStack(spacing: 10) {
                        HStack(spacing: 10) {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            Text("연말정산 환급금 언제 들어오나요?")
                                .font(.system(size: 18))
                            Spacer()
                        }
                        .padding([.top, .leading, .trailing],20)
                        HStack(spacing: 10) {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            Text("각종 잠든 돈 찾는 법 총정리")
                                .font(.system(size: 18))
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding([.top, .leading, .trailing],20)
                        HStack(spacing: 10) {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            Text("알뜰교통카드 vs 기후동행카드")
                                .font(.system(size: 18))
                            Spacer()
                        }
                        .padding([.top, .leading, .trailing],20)
                        Button(action: {
                            print("Button Clicked")
                        }, label: {
                            Text("돈이 되는 이야기 더 보기")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                        })
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(.blue)
                        .cornerRadius(20)
                        .padding([.top, .trailing, .leading], 20)
                    }
                    .frame(width: 360 , height: 250)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    Spacer()
                }
                .background(Color.gray.opacity(0.15))
                .padding([.top],10)
            }
            .navigationBarWithButton("삼쩜삼")
        }
    }
}

#Preview {
    TaxView()
}
