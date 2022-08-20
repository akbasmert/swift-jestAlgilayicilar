//
//  ViewController.swift
//  jestAlgilayicilar
//
//  Created by Mert AKBAŞ on 20.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imadeView: UIImageView!
    var ankara = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imadeView.isUserInteractionEnabled = true // Kullanıcının fotoğrafta yaptığı değişilileri algılamayı açtık.
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir)) // UITap ı seçerek görsele dokunulduğunda yapılacakarı seçtik, döndürme kaydırma, basılı tutma gibi seçeneklerde var.
        imadeView.addGestureRecognizer(gestureRecognizer) // Görsele oluşturduğumuz gestureReconizeri ekledik.
    }

    @objc func gorselDegistir(){
        print("tıklandı")
        
        if ankara == false {
            imadeView.image = UIImage(named: "ankara")
            label.text = "Ankara"
            ankara = true
        }else {
            imadeView.image = UIImage(named: "isatanbul")
            label.text = "İstanbul"
            ankara = false
        }
    }
}

