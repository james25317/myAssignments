//
//  ViewController.swift
//  SimpleApp
//
//  Created by James Hung on 2021/3/6.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var factLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                        
    }
    
    @IBAction func showButton(_ sender: Any) {
        updateLabel()
        updateHexColor()
     
    }
    
    func updateLabel() {
        let factLabeltext = ["McDonald’s once made bubblegum-flavored broccoli",
                             "Some fungi create zombies, then control their minds",
                             "The first oranges weren’t orange",
                             "There’s only one letter that doesn’t appear in any U.S. state name, Q",
                             "A cow-bison hybrid is called a “beefalo”",
                             "Johnny Appleseed’s fruits weren’t for eating",
                             "Scotland has 421 words for “snow"]
        var randomFactLabel: String
        
        randomFactLabel = factLabeltext.randomElement() ?? "no fact"
        factLabel.text = String(randomFactLabel)
    }
    
    func updateHexColor() {
        let hexColorCode = ["#ff0000",
                        "#ffa500",
                        "#ffff00",
                        "#008000",
                        "#0000ff",
                        "#4b0082",
                        "#ee82ee"]
        
        let randomHexColor = hexColorCode.randomElement() ?? "#ffffff"
        self.view.backgroundColor = UIColor.hexColor(hex: randomHexColor)
    }
    
    
}

extension UIColor { //UIColor class的extension

class func hexColor(hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
} }
