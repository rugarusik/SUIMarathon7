//
//  ContentView.swift
//  SUIMarathon7
//
//  Created by Alina Golubeva on 18/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isExpanded = false
    
    var frame: CGSize {
        CGSize(
            width: isExpanded ? 300 : 100,
            height: isExpanded ? 300 : 50
        )
    }
    
    var body: some View {
        HStack {
            if !isExpanded {
                Spacer()
            }
            VStack {
                if !isExpanded {
                    Spacer()
                }
                ZStack(alignment: isExpanded ? .topLeading : .center) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.blue)
                        .frame(width: frame.width, height: frame.height)
                        .padding(.bottom, isExpanded ? 20 : 0)
                    
                    
                    if isExpanded {
                        Button {
                            withAnimation(.easeInOut) {
                                isExpanded.toggle()
                            }
                        } label: {
                            Image(systemName: "arrowshape.backward.fill")
                            Text("Back")
                        }
                        .transition(.scale)
                        .foregroundColor(.white)
                        .padding()
                    } else {
                        Button {
                            withAnimation(.easeInOut) {
                                isExpanded.toggle()
                            }
                        } label: {
                            Text("Open")
                        }
                        .transition(.scale)
                        .foregroundColor(.white)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


