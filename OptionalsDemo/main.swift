//
//  main.swift
//  OptionalsDemo
//
//  Created by Adriano Kaito on 07/02/20.
//  Copyright © 2020 AK. All rights reserved.
//

/*
 * 1. Force unwrapping = optional!
 * Pode acontecer de dar pau de runtime como nas linhas abaixo
 */

// let myOptional: String?
// myOptional = nil
// let text:String = myOptional!
 
// ===================================================================================

/*
 * 2. Check for nil value = if optional != nil { optional! }
 * Evita dar nullPointer mas é verboso e ainda é necessário realizar 'unwrap' utilizando o '!' no myOptional para utilizá-lo
 */
 
// let myOptional: String?
// myOptional = nil
//
// if myOptional != nil {
//     let text:String = myOptional!
//     let text2:String = myOptional!
// } else {
//     print("myOptional was found to be nil.")
// }
 
// ====================================================================================

/*
 * 3. Optional Binding (if let) = if let safeOptional = optional { safeOptional }
 * Faz um unwrap do valor para uma constante caso não seja nulo
 */

// let myOptional: String?
// myOptional = "Angela"
//
// if let safeOptional = myOptional { // let safeOptional: String
//     let text:String = safeOptional
//     let text2:String = safeOptional
//     print(safeOptional)
// } else {
//     print("myOptional was found to be nil.")
// }
 
// ====================================================================================

/*
 * 4. Nil Coalescing Operator = optional ?? defaultValue
 * Checa se o valor é nil através do ??. Caso não seja, utiliza o valor. Caso seja, utiliza um 'valor padrão' que é definido em seguida
 */

// let myOptional: String?
// myOptional = nil
//
// let text: String = myOptional ?? "I am the default value"
// print(text)

// ====================================================================================

/*
 * 5. Optional Chaining = optional?.property / optional?.method()
 * Usado com struct
 */

struct MyOptional {
    var property = 123
    
    func method() {
        print("I am the struct's method")
    }
}

let myOptional: MyOptional?
myOptional = MyOptional()
print(myOptional?.property)
myOptional?.method()
