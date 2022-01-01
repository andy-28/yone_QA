//
//  QA.swift
//  yone_QA
//
//  Created by 江啟綸 on 2021/12/31.
//

import Foundation

class Datebase{
    var answer = ""
    var question = ""
    init(question:String, answer:String){
        self.question = question
        self.answer = answer
    }
}

var qnaArray = [Datebase(question: "生日", answer: "1991/3/10"),
                Datebase(question: "出生地",answer: "日本德島縣"),
                Datebase(question: "暱稱",answer: "Hachi八爺"),
                Datebase(question: "第一張專輯",answer: "diroama"),
                Datebase(question: "最新專輯",answer: "STARY SHEEP"),
                Datebase(question: "衣服聯名",answer: "Uniqlo"),
                Datebase(question: "2018年演唱會",answer: "幕張"),
                Datebase(question: "最高播放",answer: "Lemon"),
                Datebase(question: "經紀公司",answer: "Sony"),
                Datebase(question: "病症",answer: "高功能自閉症")]
