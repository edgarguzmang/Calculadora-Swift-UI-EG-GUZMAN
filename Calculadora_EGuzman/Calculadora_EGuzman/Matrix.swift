//
//  Matrix.swift
//  Calculadora_EGuzman
//
//  Created by MAC on 12/05/22.
//

import Foundation
import SwiftUI
import UIKit

struct Matrix{
    static let Seccion1:[KeyboardButton]  =
    [
        .init(titulo: "DE", textcolor: .black, background: gris, isDoubleWidth: false, type: .reset),
        .init(titulo: "+/-", textcolor: .black, background: gris, isDoubleWidth: false, type: .reset),
        .init(titulo: "%", textcolor: .black, background: gris, isDoubleWidth: false, type: .reset),
        .init(titulo: "/", textcolor: .black, background: naranja, isDoubleWidth: false, type: .reset),
        .init(titulo: "7", textcolor: .black, background: negro, isDoubleWidth: false, type: .number(7)),
        .init(titulo: "8", textcolor: .black, background: negro, isDoubleWidth: false, type: .number(8)),
        .init(titulo: "9", textcolor: .black, background: negro, isDoubleWidth: false, type: .number(9)),
        .init(titulo: "X", textcolor: .black, background: naranja, isDoubleWidth: false, type: .operation(.multiplicacion)),
        .init(titulo: "4", textcolor: .black, background: negro, isDoubleWidth: false, type: .number(4)),
        .init(titulo: "5", textcolor: .black, background: negro, isDoubleWidth: false, type: .number(5)),
        .init(titulo: "6", textcolor: .black, background: negro, isDoubleWidth: false, type: .number(6)),
        .init(titulo: "-", textcolor: .black, background: naranja, isDoubleWidth: false, type: .operation(.resta)),
        .init(titulo: "1", textcolor: .black, background: negro, isDoubleWidth: false, type: .number(1)),
        .init(titulo: "2", textcolor: .black, background: negro, isDoubleWidth: false, type: .number(2)),
        .init(titulo: "3", textcolor: .black, background: negro, isDoubleWidth: false, type: .number(3)),
        .init(titulo: "+", textcolor: .black, background: naranja, isDoubleWidth: false, type: .operation(.suma)),
    ]
    static let Seccion2:[KeyboardButton] =
        [
            .init(titulo: "0", textcolor: .white, background: negro, isDoubleWidth: true, type: .number(0)),
            .init(titulo: ",", textcolor: .white, background: negro, isDoubleWidth: false, type: .reset),
            .init(titulo: "=", textcolor: .black, background: naranja, isDoubleWidth: false, type: .result),
        ]
    
    static let PrimeraPocision:(CGFloat)-> [GridItem]={width in
        return Array(repeating: GridItem(.flexible(minimum: width),spacing: 0),count:4)
    }
    static let SegundaPocision:(CGFloat)-> [GridItem]={width in
        return [
            GridItem(.flexible(minimum: width * 2 ),spacing: 0),
            GridItem(.flexible(minimum: width ),spacing: 0),
            GridItem(.flexible(minimum: width),spacing: 0),
        ]
        
        
    }
    
}
