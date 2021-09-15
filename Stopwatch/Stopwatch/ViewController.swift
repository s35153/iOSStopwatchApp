//
//  ViewController.swift
//  Stopwatch
//
//  Created by apple on 14/09/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Minute: UILabel!
    @IBOutlet weak var Second: UILabel!
    @IBOutlet weak var Hour: UILabel!
    @IBOutlet weak var Start: UIButton!
    @IBOutlet weak var Stop: UIButton!
    
    
    var timer: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       

    }
    @IBAction func startTimer() {
        Start.isEnabled = false
        Stop.isEnabled = true
        var Sec = 0
        var min = 0
        var hour = 0
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
            _ in
            //var var1 = Int(self.Second.text!)
            Sec = Sec+1
            if(Sec>59){
                min = min+1
                if(min>59){
                    hour = hour+1
                    self.Hour.text = "\(hour)    :"
                    min=0
                }
                self.Minute.text = "\(min)    :"
                Sec=0
            }
            self.Second.text = "\(Sec)"
            print(self.Second.text!)
        }
    }

    @IBAction func stopTimer() {
        Stop.isEnabled = false
        Start.isEnabled = true
        
        timer?.invalidate()
    }
    
}

