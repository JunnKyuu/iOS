//
//  SymbolRollerView.swift
//  SymbolRoller-SwiftUI
//
//  Created by JunKyu Lee on 1/5/24.
//

import SwiftUI

struct SymbolRollerView: View {
    @State private var imageName: String = "sun.min"

    let symbols: [String] = [
        "sun.min","moon", "cloud", "wind", "snowflake"
    ]
    
    var body: some View {
        VStack(spacing: 50){
            Spacer()
            
            Image(systemName: imageName)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Spacer()
            
            Text(imageName)
                .font(.system(size: 40, weight: .bold, design: .default))
            
            Button(action: {
                imageName = symbols.randomElement()!
            }, label: {
                HStack {
                    Image(systemName: "arrow.3.trianglepath")
                    VStack(alignment: .center) {
                        Text("Reload")
                            .font(.system(size: 30, weight: .medium, design: .default))
                        Text("Click me to reload")
                    }
                }
            })
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.blue)
            .clipShape(Capsule())
            .foregroundColor(.white)
        }
    }
}

#Preview {
    SymbolRollerView()
}
