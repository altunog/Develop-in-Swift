//
//  AddEditTableViewController.swift
//  EmojiDictionary
//
//  Created by Oğuz Kaan Altun on 13.11.2022.
//

import UIKit

class AddEditTableViewController: UITableViewController {
    
    var emoji: Emoji?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    init?(coder: NSCoder, emoji: Emoji?) {
        self.emoji = emoji
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        updateSaveButton()
    }
    
    func setupViewController() {
        guard let emoji else {
            title = "Add Emoji"
            return
        }
        nameTextField.text = emoji.name
        symbolTextField.text = emoji.symbol
        descriptionTextField.text = emoji.description
        usageTextField.text = emoji.usage
        title = "Edit Emoji"
    }
    
    func updateSaveButton() {
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let usageText = usageTextField.text ?? ""
        saveButton.isEnabled = containsSingleEmoji(symbolTextField) &&
        !nameText.isEmpty && !descriptionText.isEmpty &&
        !usageText.isEmpty
    }
    
    func containsSingleEmoji(_ textField: UITextField) -> Bool {
        guard let text = textField.text, text.count == 1 else {
            return false
        }
        
        let isCombinedEmoji = text.unicodeScalars.count > 1 &&
        text.unicodeScalars.first?.properties.isEmoji ?? false
        let isEmojiPresentation = text.unicodeScalars.first?.properties.isEmojiPresentation ?? false
        
        return isEmojiPresentation || isCombinedEmoji
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else { return }
        
        let symbol = symbolTextField.text!
        let name = nameTextField.text!
        let description = descriptionTextField.text!
        let usage = usageTextField.text!
        emoji = Emoji(symbol: symbol, name: name,
                      description: description, usage: usage)
    }
    
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButton()
    }
}
