//
//  Queue.swift
//  SimpleQueueImplementation
//
//  Created by Richard Muraguri Gathogo on 16/10/2017.
//  Copyright © 2017 Richard Muraguri Gathogo. All rights reserved.
//

import Foundation
class Queue {
    var head:Node?
    var tail:Node?
    func enqueue(value:Int) {
        let newNode = Node(value: value);
        if let _ = head {
            tail?.next = newNode
            tail = newNode
        } else {
            head = newNode
            tail = newNode
        }
    }
    func dequeue() -> Int? {
        if let current = head {
            head = current.next
            return current.value
        } else {
            return nil
        }
    }
    func list() -> [Int] {
        var list : [Int] = []
        var current = head
        while  current != nil{
            list.append((current?.value)!)
            current = current?.next
        }
        
        return list
    }
}
