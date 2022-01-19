//
//  Data.swift
//  UITableExample
//
//  Created by max on 19.01.2022.
//


import Foundation
import UIKit

struct Info {
    var title: String
    var image: String
    var background: UIColor
    var switchBox: Bool?
}

let dataArray = [
    [
        Info(title: "Airplane Mode", image: "airplane", background: UIColor.systemOrange, switchBox: true),
        Info(title: "Wi-Fi", image: "wifi", background: UIColor.systemBlue, switchBox: false),
        Info(title: "Bluetooth", image: "dot.radiowaves.right", background: UIColor.systemBlue, switchBox: false),
        Info(title: "Mobile Data", image: "antenna.radiowaves.left.and.right", background: UIColor.systemGreen, switchBox: false),
        Info(title: "Personal Hotspot", image: "personalhotspot", background: UIColor.systemGreen, switchBox: false)
    ],
    [
        Info(title: "Notifications", image:  "bell.badge.fill", background: UIColor.systemRed, switchBox: false),
        Info(title: "Sounds & Haptics", image: "speaker.wave.3.fill", background: UIColor.systemPink, switchBox: false),
        Info(title: "Focus", image: "moon.fill", background: UIColor.systemIndigo, switchBox: false),
        Info(title: "Screen Time", image: "hourglass", background: UIColor.systemIndigo, switchBox: false)
    ],
    [
        Info(title: "General", image:  "gear", background: UIColor.systemGray, switchBox: false),
        Info(title: "Control Center", image: "switch.2", background: UIColor.systemGray, switchBox: false),
        Info(title: "Display & Brightness", image: "textformat.size", background: UIColor.systemBlue, switchBox: false),
        Info(title: "Home Screen", image: "apps.iphone", background: UIColor.systemBlue, switchBox: false),
        Info(title: "Accessibility", image:  "xmark.shield.fill", background: UIColor.systemBlue, switchBox: false),
        Info(title: "Wallpaper", image: "circle.hexagongrid", background: UIColor.systemCyan, switchBox: false),
        Info(title: "Siri & Search", image: "circle", background: UIColor.systemGray2, switchBox: false),
        Info(title: "Face ID & Passcode", image: "faceid", background: UIColor.systemGreen, switchBox: false),
        Info(title: "Emergency SOS", image: "exclamationmark", background: UIColor.systemRed, switchBox: false),
        Info(title: "Exposure Notifications", image:  "heart.circle", background: UIColor.systemRed, switchBox: false),
        Info(title: "Battery", image: "battery.100", background: UIColor.systemGreen, switchBox: false),
        Info(title: "Privacy", image: "hand.raised.fill", background: UIColor.systemBlue, switchBox: false)
    ]
                 
]
