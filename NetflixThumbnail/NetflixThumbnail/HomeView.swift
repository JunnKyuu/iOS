//
//  HomeView.swift
//  NetflixThumbnail
//
//  Created by JunKyu Lee on 10/6/24.
//

import SwiftUI

struct HomeView: View {
    @State var bigBanner: String = ""
    @State var dramas: [Drama] = []
    
    var body: some View {
        ScrollView {
            HStack {
                Image("logo")
                    .resizable()
                    .frame(width: 50, height: 50)
                Spacer()
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding()
            
            AsyncImage(url: URL(string: bigBanner), content: {
                image in image
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 525)
            }, placeholder: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray)
                    .frame(width: 300, height: 525)
                    .opacity(0.4)
                    .overlay(content: {
                        ProgressView()
                            .tint(Color.white)
                    })
            })
            .overlay(alignment: .bottom, content: {
                HStack(alignment: .center) {
                    Button(action: {
                        print("play button tapped")
                    }, label: {
                        Image(systemName: "play.fill")
                    })
                    .buttonStyle(.bordered)
                    
                    Button(action: {
                        print("info button tapped")
                    }, label: {
                        Image(systemName: "info.circle")
                    })
                    .buttonStyle(.bordered)
                    
                }
                .foregroundColor(.white)
                .padding()
            })
            
            if dramas.count == 0 {
                ProgressView()
                    .tint(Color.white)
                    .padding()
                    .task {
                        let url: URL = URL(string: "https://gvec03gvkf.execute-api.ap-northeast-2.amazonaws.com/")!
                        guard let (data, _) : (Data, URLResponse) = try? await URLSession.shared.data(from: url) else {return}
                        let decoder: JSONDecoder = JSONDecoder()
                        guard let dramaCollection: DramaCollection = try? decoder.decode(DramaCollection.self, from: data) else {return}
                        bigBanner = dramaCollection.bigBanner
                        dramas = dramaCollection.dramas
                    }
                
            } else {
                ForEach(dramas, id: \.categoryTitle) { drama in
                    VStack(alignment: .leading) {
                        Text(drama.categoryTitle)
                            .font(.title)
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 10) {
                                ForEach(drama.posters, id: \.self) { poster in
                                    let url: URL = URL(string: poster)!
                                    AsyncImage(url: url) { image in
                                        image
                                            .resizable()
                                            .cornerRadius(10)
                                    } placeholder: {
                                        ProgressView()
                                            .tint(Color.white)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
        .background(Color.black)
        .foregroundStyle(Color.white)
    }
}

#Preview {
    HomeView()
}
