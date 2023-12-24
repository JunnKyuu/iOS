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
    }
    
    let cities: [String] = ["서울", "수원", "용인", "부산"]
    
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]

    @IBAction func changeButtonTapped(_ sender: Any) {
        print("도시, 온도, 날씨 이미지 변경")
        
        cityLabel.text = cities.randomElement()!
        let imageName = weathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)!.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: -15..<3)
        temperatureLabel.text = "\(randomTemp)°"
        
        let randomCity = cities.randomElement()!
        cityLabel.text = randomCity
    }
    

}
