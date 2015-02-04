//
//  main.swift
//  Builder
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

import Foundation

public class Product {
    var name:String
    init(name: String) {
        self.name = name
    }
}

public protocol Builder {
    var product: Product? {get set}
    func BuildPart()
    func GetResult() -> Product?
}

class ConcreteBuilderA: Builder {
    var product: Product?
    func BuildPart() {
        self.product = Product(name: "Motocycle")
    }
    func GetResult() -> Product? {
        return self.product
    }
}

class ConcreteBuilderB: Builder {
    var product: Product?
    func BuildPart() {
        self.product = Product(name: "Scooter")
    }
    func GetResult() -> Product? {
        return self.product
    }
}

class Director {
    var bs: [Builder] = [ConcreteBuilderA(), ConcreteBuilderB()]
    func Construct() {
        for b in bs {
            b.BuildPart()
        }
    }
    
    func Run() {
        println("Director is Running Construction...")
        self.Construct()
        for b in bs {
            if let p = b.GetResult() {
                println("Built Product: \(p.name)")
            }
        }
    }
}

var d = Director()
d.Run()