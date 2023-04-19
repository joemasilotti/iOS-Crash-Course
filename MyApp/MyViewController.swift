import UIKit

class MyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "My View Controller"

        let button = UIButton(type: .system)
        button.setTitle("Present new screen", for: .normal)
        button.addTarget(self, action: #selector(presentNewScreen), for: .touchUpInside)
        button.sizeToFit()

        view.addSubview(button)
        button.center = view.center
    }

    @objc private func presentNewScreen() {
        let navigationController = UINavigationController(rootViewController: SecondViewController())
        present(navigationController, animated: true)
    }
}
