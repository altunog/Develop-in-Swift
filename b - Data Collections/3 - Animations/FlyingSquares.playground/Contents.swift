import UIKit
import PlaygroundSupport

let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)
liveView.backgroundColor = .black

PlaygroundPage.current.liveView = liveView


let smallFrame = CGRect(x: 0, y: 150, width: 100, height: 100)
let square = UIView(frame: smallFrame)
square.backgroundColor = .systemYellow

let smallFrame2 = CGRect(x: 0, y: 350, width: 100, height: 100)
let square2 = UIView(frame: smallFrame2)
square2.backgroundColor = .systemYellow

let smallFrame3 = CGRect(x: 0, y: 0, width: 100, height: 100)
let square3 = UIView(frame: smallFrame3)
square3.backgroundColor = .systemPurple

liveView.addSubview(square)
liveView.addSubview(square2)
liveView.addSubview(square3)

UIView.animate(withDuration: 1, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [.repeat], animations: {
    square.frame = CGRect(x: 250, y: 150, width: 100, height: 100)
}, completion: nil)


UIView.animate(withDuration: 1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [.repeat], animations: {
    square2.frame = CGRect(x: 250, y: 350, width: 100, height: 100)
}, completion: nil)


UIView.animate(withDuration: 2.0) {
    square3.backgroundColor = .systemOrange
    
    let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    let rotateTransform = CGAffineTransform(rotationAngle: .pi)
    let translateTransform = CGAffineTransform(translationX: 200, y: 200)
    let comboTransform = scaleTransform
        .concatenating(rotateTransform)
        .concatenating(translateTransform)
    square3.transform = comboTransform
} completion: { _ in
    UIView.animate(withDuration: 2.0) {
        square3.transform = .identity
    }
}

