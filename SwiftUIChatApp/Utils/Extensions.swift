//
//  Extensions.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 11/8/21.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
