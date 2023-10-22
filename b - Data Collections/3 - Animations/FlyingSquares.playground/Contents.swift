import UIKit
import PlaygroundSupport

let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)
liveView.backgroundColor = .white

PlaygroundPage.current.liveView = liveView


let smallFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
let square = UIView(frame: smallFrame)
square.backgroundColor = .systemPurple

liveView.addSubview(square)

UIView.animate(withDuration: 3.0) {
    square.backgroundColor = .systemOrange
    square.frame = CGRect(x: 150, y: 150, width: 250, height: 250)
} completion: { _ in
    UIView.animate(withDuration: 3.0) {
        square.backgroundColor = .systemPurple
        square.frame = smallFrame
    }
}
