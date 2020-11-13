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
//Изменим свойства нашей надписи (label)
        label.isHidden = true //сделали кнопку скрытой
        label.font = label.font.withSize(32) //изменили размер текста
        label.textColor = UIColor.red //или просто .red
        
//Изменим свойства нашей кнопки (button)
        button.setTitle("Get result", for: .normal) //изменили название надписи
        button.setTitleColor(.blue, for: .normal) //изменили цвет написи
        button.backgroundColor = .green //изменили цветфона кнопки
    }
//IBAction создаем снизу как метод, с типом Uibutton
    @IBAction func pressedButton(_ sender: UIButton) {
        label.text = "Hello, world"
    }
}

