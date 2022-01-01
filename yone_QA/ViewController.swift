//
//  ViewController.swift
//  yone_QA
//
//  Created by 江啟綸 on 2021/12/30.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var QLab: UILabel!
    @IBOutlet weak var ALab: UILabel!
    @IBOutlet weak var CountLab: UILabel!
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var AnswerBtn: UIButton!
    @IBOutlet weak var ResetBtn: UIButton!
    @IBOutlet weak var ViewL: UIView!
    @IBOutlet weak var ViewR: UIView!
    
    
    var count = 0
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
            .landscape
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        QLab.layer.borderWidth = 5
//        QLab.layer.borderColor = UIColor.white.cgColor
//        QLab.layer.cornerRadius = 20
        ViewL.layer.borderWidth = 5
        ViewL.layer.borderColor = UIColor.white.cgColor
        ViewL.layer.cornerRadius = 20
        ViewR.layer.borderWidth = 5
        ViewR.layer.borderColor = UIColor.white.cgColor
        ViewR.layer.cornerRadius = 20
        
        
        NextBtn.layer.borderWidth = 5
        NextBtn.layer.borderColor = UIColor.white.cgColor
        NextBtn.layer.cornerRadius = 20
        AnswerBtn.layer.borderWidth = 5
        AnswerBtn.layer.borderColor = UIColor.white.cgColor
        AnswerBtn.layer.cornerRadius = 20
        
        qnaArray.shuffle()
        nextQ()
        ResetBtn.isHidden = true
        
    }
    func reset(){
        count = 0
        ALab.isHidden = true
        ResetBtn.isHidden = false
    }
    
    func nextQ(){
        QLab.text = qnaArray[count].question
        ALab.text = qnaArray[count].answer
        CountLab.text = ("\(count+1)")
        ALab.isHidden = true
    }
    @IBAction func AnswerBtn(_ sender: UIButton) {
        ALab.isHidden = false
        
    }
    @IBAction func NextBtn(_ sender: UIButton) {
        
        count += 1
        
        if count < 10 {
            QLab.isHidden = false
            nextQ()
        }else if count == 10 {
            QLab.isHidden = true
            AnswerBtn.isHidden = true
            NextBtn.isHidden = true
            
            reset()
            nextQ()
        }
    }
    @IBAction func reaetBtn(_ sender: UIButton) {
        count = 0
        self.viewDidLoad()
        QLab.isHidden = false
        AnswerBtn.isHidden = false
        NextBtn.isHidden = false
    }
    
    
    
}

