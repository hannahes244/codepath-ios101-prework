//
//  ViewController.swift
//  IOS101_PreWork
//
//  Created by Hannah Sanders on 5/2/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor { //creating a change color function, indicating that it returns a UIColor object
            let red = CGFloat.random(in: 0...1) //CGFloat represents numbers, like rgb
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5) //alpha indicates opacity
        }
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var SchoolLabel: UILabel!
    @IBOutlet weak var CareerLabel: UILabel!
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        func changeTColor() -> UIColor { //creating a change color function, indicating that it returns a UIColor object
            let red = CGFloat.random(in: 0...1) //CGFloat represents numbers, like rgb
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5) //alpha indicates opacity
        }
        let randomColor = changeTColor()
        NameLabel.textColor = randomColor
        SchoolLabel.textColor = randomColor
        CareerLabel.textColor = randomColor
    }
    
    let image1 = UIImage(named: "Image 1")
    let image2 = UIImage(named: "Image 2")
    let image3 = UIImage(named: "Image 3")
    let image4 = UIImage(named: "Image 4")
    let image5 = UIImage(named: "Image 5")
    let image6 = UIImage(named: "Image 6")
    let image7 = UIImage(named: "Image 7")
    let image8 = UIImage(named: "Image 8")
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBAction func NextButton(_ sender: UIButton) {
        func changeImage() -> UIImage? {
            let imageNum = Int.random(in: 1..<8)
            let images = [image1, image2, image3, image4, image5, image6, image7, image8]
            if let returnImage = images[imageNum] {
                return returnImage
            }
            return image3
        }
        
        func changeBorder() {
            myImageView.layer.borderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0).cgColor
            myImageView.layer.masksToBounds = true
            myImageView.contentMode = .scaleToFill
            myImageView.layer.borderWidth = 8
            myImageView.layer.cornerRadius = 15
        }
        myImageView.image = changeImage()
        changeBorder()
    }
    
    
}


