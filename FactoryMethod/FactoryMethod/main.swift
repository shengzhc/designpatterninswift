//
//  main.swift
//  FactoryMethod
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

import Foundation

public class Product {
}

class ConcreteProductA : Product {
}

class ConcreteProductB : Product {
}

public protocol Creator {
    func CreateProduct() -> Product;
}

class ConcreteCreatorA : Creator {
    func CreateProduct() -> Product {
        return ConcreteProductA()
    }
}

class ConcreteCreatorB : Creator {
    func CreateProduct() -> Product {
        return ConcreteProductB()
    }
}

class Client {
    var cs : [Creator] = [ConcreteCreatorA(), ConcreteCreatorB()]
    func Run() {
        for c in cs {
            println("\(c) Creats: ")
            println("------\(c.CreateProduct())")
        }
    }
}

var c = Client()
c.Run()
