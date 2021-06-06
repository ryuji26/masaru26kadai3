//
//  ViewController.swift
//  kadai3
//
//  Created by 髙橋　竜治 on 2021/06/04.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet private weak var firstText: UITextField!
    @IBOutlet private weak var secondText: UITextField!
    @IBOutlet private weak var firstNumber: UILabel!
    @IBOutlet private weak var secondNumber: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var firstSwitch: UISwitch!
    @IBOutlet private weak var secondSwitch: UISwitch!

    @IBAction func calculatedButton(_ sender: Any) {

        //UITextFieldの型を変換
        var firstTextNumber = Int(firstText.text ?? "") ?? 0
        var secondTextNumber = Int(secondText.text ?? "") ?? 0

        let resultText: String

        //UISwitchによる符号の切り替え
        if firstSwitch.isOn {
            firstTextNumber *= -1
        }

        if secondSwitch.isOn {
            secondTextNumber *= -1
        }

        //計算して各UILabelに表示
        firstNumber.text = String(firstTextNumber)

        secondNumber.text = String(secondTextNumber)

        resultText = String(firstTextNumber + secondTextNumber)
        resultLabel.text = resultText
    }
    

}

