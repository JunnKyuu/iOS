//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by JunKyu Lee on 2023/03/01.
//

import UIKit

class WeatherViewController: UIViewController {
    @IBOutlet var weatherImageView: UIImageView!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let cities: [String] = ["Seoul", "Tokyo", "LA", "Seattle"]
    
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]

    @IBAction func changeButtonTapped(_ sender: Any) {
        print("도시, 온도, 날씨 이미지 변경하자!!")
        
        cityLabel.text = cities.randomElement()!
        let imageName = weathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)!.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemp)°"
        
        let randomCity = cities.randomElement()!
        cityLabel.text = randomCity
    }
    

}
