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
        let firstTextNumber = Int(firstText.text ?? "") ?? 0
        let secondTextNumber = Int(secondText.text ?? "") ?? 0

        let firstSwitchNumber: Int
        let secondSwitchNumber: Int

        let resultText: String

        //UISwitchによる符号の切り替え
        if firstSwitch.isOn {
            firstSwitchNumber = firstTextNumber * -1
        } else {
            firstSwitchNumber = firstTextNumber
        }

        if secondSwitch.isOn {
            secondSwitchNumber = secondTextNumber * -1
        } else {
            secondSwitchNumber = secondTextNumber
        }

        //計算して各UILabelに表示
        firstNumber.text = String(firstSwitchNumber)

        secondNumber.text = String(secondSwitchNumber)

        resultText = String(firstSwitchNumber + secondSwitchNumber)
        resultLabel.text = resultText
    }
    

}

