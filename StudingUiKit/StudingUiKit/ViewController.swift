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
        if label.isHidden {
            label.isHidden = false
            label.text = "Hello, world"
            
            button.setTitle("Clear", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .red
        } else {
            label.isHidden = true
            
            button.setTitle("Get result", for: .normal)
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .green
        }
    }
}
//Теперь когда мы добились промежуточного результата сделаем следующее:
//Сделаем так что при первом нажатии надпись появлялась, а при втором нажатии, пропадала. При этом когда надписи нет кнопка того вида который мы для нее определили (зеленая с синей надписью), а когда надпись видна то кнопка должна быть красного цвета, и заголовок у нее при этом будет меняться на "Clear", белого цвета. После еще одного нажатия текст очищается и кнопка возвращается к своему исходному значению (Зеленая кнопка синяя надпись)
