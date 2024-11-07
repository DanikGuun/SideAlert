import UIKit

extension UIViewController{
    
    //предыдущий алерт, для последовательного вывода
    private var previousSideAlert: SideAlert?{
        self.view.subviews.last(where: { $0 is SideAlert }) as? SideAlert
    }
    
    /**
     Выводит новый алерт сверху экрана
     - Parameter sideAlert: sideAlert, который нужно вывести
     - Parameter inset: отступ от левого и правого краев (20 по умолчанию)
     - Parameter during: время, которое алерт висит (2 по умолчанию)
     - Parameter animated: надо ли анимировать переход (true по умолчанию)
     */
    public func presentSideAlert(_ sideAlert: SideAlert, inset: CGFloat = 20, during timeExists: TimeInterval = 2, animated: Bool = true){
        
        //frame для спрятанного алерта
        sideAlert.frame = CGRect(x: inset, y: -50, width: self.view.frame.width - inset*2, height: 50)
        
        //Y на который надо поставить алерт, или с 0, или под предыдущий
        let currentY: CGFloat
        if let previousSideAlert = self.previousSideAlert{
            currentY = previousSideAlert.frame.maxY + 10
        }
        else {
            let area = self.view.safeAreaLayoutGuide.layoutFrame
            currentY = area.minY
        }
        
        //добавляем алерт обязательно после поиска текщего, чтобы текщий алерт не лез в subviews
        self.view.addSubview(sideAlert)

        //действие для свайпа и клаения
        let gestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        gestureRecognizer.direction = .up
        sideAlert.addGestureRecognizer(gestureRecognizer)
        
        UIView.animate(withDuration: animated ? 0 : 0.4) {
            sideAlert.frame = CGRect(x: inset, y: currentY, width: self.view.frame.width - inset*2, height: 50)
        }
        
        Timer.scheduledTimer(withTimeInterval: timeExists, repeats: false, block: { [weak self] timer in
            DispatchQueue.main.async {
                self?.hideSideAlert(sideAlert, animated: animated)
            }
        })
    }
    
    private func hideSideAlert(_ sideAlert: SideAlert, animated: Bool = true){
        var frame = sideAlert.frame
        frame.origin.y = -50
        UIView.animate(withDuration: animated ? 0 : 0.4, animations: {
            sideAlert.frame = frame
        }, completion: { _ in
            sideAlert.removeFromSuperview()
        })
    }

    @objc
    private func handleSwipe(_ gestureRecognizer: UISwipeGestureRecognizer) {
        guard let sideAlert = gestureRecognizer.view as? SideAlert else { return }
        self.hideSideAlert(sideAlert)
    }
    
}
    
    
