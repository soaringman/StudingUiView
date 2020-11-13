//
//  ViewController.swift
//  StudingUiKit
//
//  Created by Алексей Гуляев on 13.11.2020.
//

import UIKit

class ViewController: UIViewController {
//создадим Outlet (ссылку по которой в коде можно будет менять свойства label) в коде на label путем протягивания связи с label в тело класса UiViewController
    @IBOutlet weak var label: UILabel!

    //То же самое самое сделаем для кнопки (Button) с той лишь разницей что у нее есть еще и IBAction (задание действий кнопки, по аналогии можно так же обращаться к ее свойствам)
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//IBAction создаем снизу как метод, с типом Uibutton
    @IBAction func pressedButton(_ sender: UIButton) {
        label.text = "Hello, world"
    }
}

