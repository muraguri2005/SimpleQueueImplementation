//
//  ViewController.swift
//  SimpleQueueImplementation
//
//  Created by Richard Muraguri Gathogo on 16/10/2017.
//  Copyright © 2017 Richard Muraguri Gathogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var elementTF: UITextField!
    
    @IBAction func enqueue(_ sender: UIButton) {
        if  let text = elementTF?.text, let value = Int(text) {
            queue.enqueue(value: value)
            elements = queue.list()
            elementTF?.text = ""
        }
        
    }
    @IBOutlet weak var dequeuedLabel: UILabel!
    @IBAction func dequeue(_ sender: UIButton) {
        if let value = queue.dequeue() {
            dequeuedLabel?.text = "dequeued value \(value)"
            elements = queue.list()
        } else{
            dequeuedLabel?.text = "queue is empty"
        }
    }
    @IBOutlet weak var elementsLabel: UILabel!
    
    
    var queue = Queue();
    var elements: [Int] = [] {
        didSet{
            updateUI()
        }
    }
    private func updateUI() {
        elementsLabel?.text = elements.description
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }


}

