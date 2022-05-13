//
//  VistaModel.swift
//  Calculadora_EGuzman
//
//  Created by MAC on 13/05/22.
//

import Foundation
import SwiftUI
final class VistaModel:ObservableObject{
    @Published var textFieldValue:String = "0"
    var textFieldSavedValue:String = "0"
    var currentOperationToExecute:OperationType?
    var shouldRunOperation:Bool = false
    
    func logic(key:KeyboardButton){
        switch key.type {
        case .number(let value):
            if shouldRunOperation{
                textFieldValue = "0"
            }
            textFieldValue = textFieldValue == "0" ? "\(value)": textFieldValue + "\(value)"
            
        case .reset:
            textFieldValue = "0"
            textFieldSavedValue = "0"
            currentOperationToExecute = nil
            shouldRunOperation = false
        case .result:
            guard let operation = currentOperationToExecute else{
                return
            }
            
            switch operation {
            case .multiplicacion:
                textFieldValue = "\(Int(textFieldValue)! * Int(textFieldSavedValue)!)"
            case .suma:
                textFieldValue = "\(Int(textFieldValue)! + Int(textFieldSavedValue)!)"
            }
        case .operation(let type):
            textFieldSavedValue = textFieldValue
            currentOperationToExecute = type
            shouldRunOperation = true
        }
    }
}
