//
//  ContentView.swift
//  alert
//
//  Created by emi oiso on 2023/10/03.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    
    var body: some View {
        VStack {
            Button("アラート"){
                isShowAlert = true
            }
            .padding()
        }
        .padding()
        .alert("本当に削除しますか？",isPresented: $isShowAlert){
            Button("削除する",role: .destructive){
                
            }
            Button("キャンセル",role: .cancel){
                
            }
        } message: {
            Text("一度削除したら元に戻すことはできません")
        }
    }
}

#Preview {
    ContentView()
}
