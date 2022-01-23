//
//  Data.swift
//  UITableExample
//
//  Created by max on 19.01.2022.
//


import Foundation
import UIKit

protocol MVCExampleModel {
    
    func createModels() -> [[DataForTable]]
}

final class MVCExampleModelImplementation: MVCExampleModel {
    
    func createModels() -> [[DataForTable]]{
        return  [
            [
                DataForTable(title: "Airplane Mode", image: "airplane", background: UIColor.systemOrange, switchBox: true),
                DataForTable(title: "Wi-Fi", image: "wifi", background: UIColor.systemBlue, switchBox: false),
                DataForTable(title: "Bluetooth", image: "dot.radiowaves.right", background: UIColor.systemBlue, switchBox: false),
                DataForTable(title: "Mobile Data", image: "antenna.radiowaves.left.and.right", background: UIColor.systemGreen, switchBox: false),
                DataForTable(title: "Personal Hotspot", image: "personalhotspot", background: UIColor.systemGreen, switchBox: false)
            ],
            [
                DataForTable(title: "Notifications", image:  "bell.badge.fill", background: UIColor.systemRed, switchBox: false),
                DataForTable(title: "Sounds & Haptics", image: "speaker.wave.3.fill", background: UIColor.systemPink, switchBox: false),
                DataForTable(title: "Focus", image: "moon.fill", background: UIColor.systemIndigo, switchBox: false),
                DataForTable(title: "Screen Time", image: "hourglass", background: UIColor.systemIndigo, switchBox: false)
            ],
            [
                DataForTable(title: "General", image:  "gear", background: UIColor.systemGray, switchBox: false),
                DataForTable(title: "Control Center", image: "switch.2", background: UIColor.systemGray, switchBox: false),
                DataForTable(title: "Display & Brightness", image: "textformat.size", background: UIColor.systemBlue, switchBox: false),
                DataForTable(title: "Home Screen", image: "apps.iphone", background: UIColor.systemBlue, switchBox: false),
                DataForTable(title: "Accessibility", image:  "xmark.shield.fill", background: UIColor.systemBlue, switchBox: false),
                DataForTable(title: "Wallpaper", image: "circle.hexagongrid", background: UIColor.systemCyan, switchBox: false),
                DataForTable(title: "Siri & Search", image: "circle", background: UIColor.systemGray2, switchBox: false),
                DataForTable(title: "Face ID & Passcode", image: "faceid", background: UIColor.systemGreen, switchBox: false),
                DataForTable(title: "Emergency SOS", image: "exclamationmark", background: UIColor.systemRed, switchBox: false),
                DataForTable(title: "Exposure Notifications", image:  "heart.circle", background: UIColor.systemRed, switchBox: false),
                DataForTable(title: "Battery", image: "battery.100", background: UIColor.systemGreen, switchBox: false),
                DataForTable(title: "Privacy", image: "hand.raised.fill", background: UIColor.systemBlue, switchBox: false)
            ]
        ]
    }
}



