import UIKit
import PlaygroundSupport

let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)
liveView.backgroundColor = .black

PlaygroundPage.current.liveView = liveView


let smallFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
let square = UIView(frame: smallFrame)
square.backgroundColor = .systemYellow

liveView.addSubview(square)

UIView.animate(withDuration: 1.3, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [.repeat], animations: {
    square.frame = CGRect(x: 150, y: 150, width: 200, height: 200)
}, completion: nil)
