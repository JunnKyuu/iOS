//
//  ViewController.swift
//  review_SimpleWeather
//
//  Created by JunKyu Lee on 2023/03/04.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var weatherImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let cities = ["Seoul", "Seattle", "LA", "Tokyo", "Osaka"]
    let weathers = ["sun.max.fill", "wind", "cloud.fill", "cloud.bolt.fill", "cloud.bolt.fill"]
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        cityLabel.text = cities.randomElement()!
        
        let imageView = weathers.randomElement()!
        let temp = Int.random(in: 10..<30)
        
        temperatureLabel.text = "\(temp)°"
        
        weatherImageView.image = UIImage(systemName: imageView)?.withRenderingMode(.alwaysOriginal)
    }
}
