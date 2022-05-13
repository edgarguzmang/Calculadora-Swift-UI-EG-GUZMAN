//
//  VerticalStack.swift
//  Calculadora_EGuzman
//
//  Created by MAC on 12/05/22.
//

import SwiftUI

struct VerticalStack: View {
    @ObservedObject var vistaModel:VistaModel()
    let data:[KeyboardButton]
    let columns:[GridItem]
    let width:CGFloat
    init (vistaModel:VistaModel,
          data:[KeyboardButton],
          columns:[GridItem],
          width:CGFloat){
    self.vistaModel = vistaModel
    self.data = data
    self.columns = columns
    self.width = width
    
}
    var body: some View {
        LazyVGrid(columns:columns,spacing: 12){
            ForEach(data,id:\.self) { otro in
                Button(action: {
                    vistaModel.logic(key:otro)
                }, label: {
                    if otro.isDoubleWidth{
                        Rectangle().foregroundColor(otro.background).overlay(Text(otro.titulo).font(.largeTitle).offset(x:width * 0.22*0.5))
                    }
                    else{
                        Text(otro.titulo)
                            .font(.largeTitle).frame(width:width * 0.22,height:width * 0.22)
                    }
                   
                }).foregroundColor(otro.textcolor).background(otro.background).cornerRadius(width * 0.25)
            }
        }
        .frame(width:width)
    }
}

struct VerticalStack_Previews: PreviewProvider {
    static var previews: some View {
        VerticalStack(data:Matrix.Seccion1,
                      columns: Matrix.PrimeraPocision(390*0.25),
                      width: 390).previewLayout(.sizeThatFits)
        VerticalStack(data:Matrix.Seccion2,
                      columns: Matrix.SegundaPocision(390*0.25),
                      width: 390).previewLayout(.sizeThatFits)
    }
    
}
