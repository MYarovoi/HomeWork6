//
//  ViewController.swift
//  HomeWork6
//
//  Created by Mykyta Yarovoi on 09.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var detailedInfo: UILabel!
    @IBOutlet weak var creditButton: UIButton!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var deliveryLabel: UILabel!
    let text = NSMutableAttributedString(string: "Самовивіз з наших магазинів - БЕЗКОШТОВНО")
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var cartButton: UIButton!
    @IBOutlet weak var compareButton: UIButton!
    
    @IBOutlet weak var productKey: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var shopDeliveryInfo: UILabel!
    
    // Делал как картинки, но рационально заменить на кнопки
    @IBOutlet weak var playButton: UIImageView!
    @IBOutlet weak var creditInfo: UIImageView!
    
    @IBOutlet weak var TopView: UIView!
    @IBOutlet weak var MidView: UIView!
    @IBOutlet weak var BotView: UIStackView!
    
    
    
    let borderWidth: CGFloat = 1
    let border = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        creditButton.layer.borderWidth = 1.0
        creditButton.layer.borderColor = UIColor.systemGray.cgColor
        creditButton.layer.cornerRadius = 10.0
        
        buyNowButton.layer.cornerRadius = 10.0
        
        text.addAttribute(.foregroundColor, value: UIColor.systemGreen, range: NSRange(location: 30, length: 11))
        deliveryLabel.attributedText = text
        
        TopView.layer.addSublayer(borderSetup(view: TopView))
        MidView.layer.addSublayer(borderSetup(view: MidView))

        border.borderColor = UIColor.systemGray.cgColor
        border.frame = CGRect(x: 0, y: -7, width: BotView.frame.width, height: borderWidth - 0)
        border.borderWidth = borderWidth
        BotView.layer.addSublayer(border)
        
        shopDeliveryInfo.text = "Забрати завтра з 12:00"
        productPrice.text = "8 703 ₴"
        productKey.text = "Код 218525893"
    }

    func borderSetup (view: UIView) -> CALayer {
        
        let border = CALayer()
        
        border.borderColor = UIColor.systemGray.cgColor
        border.frame = CGRect(x: 0, y: TopView.frame.height - borderWidth , width: TopView.frame.width, height: borderWidth)
        border.borderWidth = borderWidth
        
        return border
    }
    
    @IBAction func buyNow(_ sender: UIButton) {
        
        print("Нажата кнопка \(buyNowButton.titleLabel?.text ?? "Escape nil")")
    }
    
    @IBAction func creditBuy(_ sender: UIButton) {
        
        print("Нажата кнопка \(creditButton.titleLabel?.text ?? "Escape nil")")
    }
    
    @IBAction func likePressed(_ sender: UIButton) {
        
        print("Нажата кнопка \(likeButton.titleLabel?.text ?? "Escape nil")")
    }
    
    @IBAction func cartPressed(_ sender: Any) {
        
        print("Нажата кнопка \(cartButton.titleLabel?.text ?? "Escape nil")")
    }
    
    @IBAction func comparePressed(_ sender: Any) {
        
        print("Нажата кнопка \(compareButton.titleLabel?.text ?? "Escape nil")")
    }
}

