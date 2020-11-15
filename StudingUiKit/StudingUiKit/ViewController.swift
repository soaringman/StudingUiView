//
//  ViewController.swift
//  StudingUiKit
//
//  Created by Алексей Гуляев on 13.11.2020.
//
//Создадим надпись и кнопку и зменим фон бекгрануда, так что бы при нажатии на кнопку на экране появлялась напись "Hello, world" красного цвета строки с 19 по 27

//Теперь когда мы добились промежуточного результата сделаем следующее:
//Сделаем так что при первом нажатии надпись появлялась, а при втором нажатии, пропадала. При этом когда надписи нет кнопка того вида который мы для нее определили (зеленая с синей надписью), а когда надпись видна то кнопка должна быть красного цвета, и заголовок у нее при этом будет меняться на "Clear", белого цвета. После еще одного нажатия текст очищается и кнопка возвращается к своему исходному значению (Зеленая кнопка синяя надпись) (строки с 31 по 43)

//Добавим еще две кнопки action1 и b action2. И немного изменим функционал: По нажатию кнопки Action 1 будем выводить "Hello, world", кнопки будут с зеленой заливкой и синим шрифтом текста, по нажатию кнопки Action 2 "hi there", третья кнопка будет находиться в состоянии невидимости так же как и надпись, она должна появиться вместе с надписью и будет отвечать за сброс значений по умолчанию.

import UIKit

class ViewController: UIViewController {
//создадим Outlet (ссылку по которой в коде можно будет менять свойства label) в коде на label путем протягивания связи с label в тело класса UiViewController
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var actionButtons: [UIButton]!
    //Создали массив OutLets для кнопки Action 1 и Action 2
    

    //То же самое самое сделаем для кнопки (Button) с той лишь разницей что у нее есть еще и IBAction (задание действий кнопки, по аналогии можно так же обращаться к ее свойствам)
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//Изменим свойства нашей надписи (label)
        label.isHidden = true //сделали кнопку скрытой
        label.font = label.font.withSize(32) //изменили размер текста

//        label.textColor = UIColor.red //или просто .red (закоммениторвали так как задаем его ниже в IBAction)
        
        button.isHidden = true
        
//Создали цикл для изменения массива кнопок Action 1 и Action 2
        for button in actionButtons {
            button.setTitleColor(.blue, for: .normal) //изменили цвет написи
            button.backgroundColor = .green //изменили цветфона кнопки
        }

//Изменим свойства нашей кнопки (button)
//Теперь кнопка будет отвечать за очистку состояний
        button.setTitle("Clear", for: .normal) //изменили название надписи
        button.setTitleColor(.white, for: .normal) //изменили цвет написи
        button.backgroundColor = .red //изменили цветфона кнопки
    }
//IBAction создаем снизу как метод, с типом Uibutton
//Привяжем в IBAction наши кнопки Action 1 и Action 2 и перепишем логику поведения
    @IBAction func pressedButton(_ sender: UIButton) {
        label.isHidden = false
        button.isHidden = false
//При использовании текстовых названий кнопок легко ошибиться и лучше использовать теги,
//        проставим теги у кнопок, Action 1 = 0, Action 2 = 1,Button = 2
// Перепишем работу логики используя теги и допишем логику для кнопки button
        if sender.tag == 0 {
            label.text = "Hello, world"
            label.textColor = .red
        } else if sender.tag == 1 {
            label.text = "Hi there"
            label.textColor = .blue
        } else if sender.tag == 2 {
            label.isHidden = true
            button.isHidden = true
        }
    }
}

