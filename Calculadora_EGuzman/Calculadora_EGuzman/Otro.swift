//
//  Otro.swift
//  Calculadora_EGuzman
//
//  Created by MAC on 13/05/22.
//

import SwiftUI
import Foundation
struct KeyboardButton:Hashable{
    /*Creo Variables*/
    let titulo:String
    let textcolor:Color
    let background:Color
    let isDoubleWidth:Bool
    let type:ButtonType
}
enum ButtonType:Hashable{
    
    case number(Int)
    case operation(OperationType)
    case result
    case reset
}

enum OperationType:Hashable{
    
    case suma
    
    case multiplicacion
}
