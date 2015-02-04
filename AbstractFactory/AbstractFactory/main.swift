//
//  main.swift
//  AbstractFactory
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

import Foundation

public protocol AbstractProductA {
    
}

public protocol AbstractProductB {

}

public protocol AbstractFactory {
    func CreateProductA() -> AbstractProductA
    func CreateProductB() -> AbstractProductB
}

class ConcreteProductA1 : AbstractProductA {
    
}

class ConcreteProductB1 : AbstractProductB {
    
}

class ConcreteProductA2 : AbstractProductA {
    
}

class ConcreteProductB2 : AbstractProductB {
    
}

class ConcreteFactory1 : AbstractFactory {
    func CreateProductA() -> AbstractProductA {
        return ConcreteProductA1()
    }
    func CreateProductB() -> AbstractProductB {
        return ConcreteProductB1()
    }
}

class ConcreteFactory2 : AbstractFactory {
    func CreateProductA() -> AbstractProductA {
        return ConcreteProductA2()
    }
    func CreateProductB() -> AbstractProductB {
        return ConcreteProductB2()
    }
}

class Client {
    
    var fs : [AbstractFactory] = [ConcreteFactory1(), ConcreteFactory2()]
    func run() {
        
        for f in fs {
            println(f)
            println("----\(f.CreateProductA())")
            println("----\(f.CreateProductB())")
        }
    }
}

var c = Client()
c.run()