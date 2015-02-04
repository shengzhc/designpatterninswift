//
//  main.swift
//  Prototype
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

import Foundation

public protocol Prototype {
    var name: String { get }
    func Clone() -> Prototype
}

class ConcretePrototype1 : Prototype {
    var id: String
    var name: String {
        get {
            return self.id
        }
    }
    
    init(id: String) {
        self.id = id
    }
    
    func Clone() -> Prototype {
        var c = ConcretePrototype1(id: self.id)
        return c
    }
}

class ConcretePrototype2 : Prototype {
    var id: String
    var name: String {
        get {
            return self.id
        }
    }
    
    init(id: String) {
        self.id = id
    }
    
    func Clone() -> Prototype {
        var c = ConcretePrototype1(id: self.id)
        return c
    }
}

class Client {
    func Run() {
        var cp1 = ConcretePrototype1(id: "ConcreteP1")
        var cc1 = cp1.Clone()
        println("\(cp1) is Cloning: \(cc1.name)")
        var cp2 = ConcretePrototype2(id: "ConcreteP2")
        var cc2 = cp2.Clone()
        println("\(cp2) is Cloning: \(cc2.name)")
    }
}

var c = Client()
c.Run()
