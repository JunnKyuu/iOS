//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by JunKyu Lee on 8/12/24.
//

import UIKit

class ViewController: UIViewController {   
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
            Quote(contents: "삶이 있는 한 희망은 있다.", name: "키케로"),
            Quote(contents: "하루에 3시간을 걸으면 7년 후에 지구를 한바퀴 돌 수 있다.", name: "사무엘존슨"),
            Quote(contents: "진정으로 웃으려면 고통을 참아야하며 , 나아가 고통을 즐길 줄 알아야 해.", name: "찰리 채플린"),
            Quote(contents: "직업에서 행복을 찾아라. 아니면 행복이 무엇인지 절대 모를 것이다.", name: "앨버트 허버드"),
            Quote(contents: "신은 용기있는자를 결코 버리지 않는다.", name: "캔러"),
            Quote(contents: "단순하게 살아라. 현대인은 쓸데없는 절차와 일 때문에 얼마나 복잡한 삶을 살아가는가?", name: "이드리스 샤흐"),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapQuoteGeneratorButton(_ sender: UIButton) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
    
}

