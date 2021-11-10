//
//  ViewController.swift
//  HIROAKIKadai5
//
//  Created by HiroakiSaito on 2021/11/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var num1TextField: UITextField!
    @IBOutlet private weak var num2TextField: UITextField!
    @IBOutlet private weak var resultantLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        num1TextField.keyboardType = .numberPad
        num2TextField.keyboardType = .numberPad
    }

    @IBAction private func calculationButton(_ sender: Any) {
        guard let num1 = Double(num1TextField.text ?? "") else {
            presentAlert(message: "割られる数を入力してください")
            return
        }

        guard let num2 = Double(num2TextField.text ?? "") else {
            presentAlert(message: "割る数を入力してください")
            return
        }

        guard num2 != 0 else {
            presentAlert(message: "割る数に0を入力しないでください")
            return
        }

        resultantLabel.text = String(Double(num1 / num2))
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(
            title: "課題5",
            message: message,
            preferredStyle: .alert)

        let okAction = UIAlertAction(
            title: "OK",
            style: .default)

        alert.addAction(okAction)

        present(alert, animated: true, completion: nil)
    }
}
