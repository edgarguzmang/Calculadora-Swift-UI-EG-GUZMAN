//
//  ContentView.swift
//  Calculadora_EGuzman
//
//  Created by MAC on 12/05/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vistaModel = VistaModel()
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            GeometryReader {proxy in
                VStack{
                    VStack{
                        Spacer()
                        HStack{
                            Spacer()
                        Text("0").foregroundColor(.white).font(.system(size: 100, weight: .regular)).frame(height:100).padding(.trailing,20)
                    }
                }
                    VerticalStack(vistaModel:vistaModel(),data: Matrix.Seccion1, columns: Matrix.PrimeraPocision(proxy.size.width*0.20), width: proxy.size.width)
                VerticalStack(vistaModel:vistaModel(),data: Matrix.Seccion2, columns: Matrix.SegundaPocision(proxy.size.width*0.20), width: proxy.size.width)
            }
        }
        .background(Color.black)
    }
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
