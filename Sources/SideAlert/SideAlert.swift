// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public final class SideAlert: UIView{
    
    //MARK: - Initializers
    public convenience init(){
        self.init(title: "", color: .success)
    }
    public init(title: String, color: UIColor, textColor: UIColor = .systemBackground, font: UIFont = .systemFont(ofSize: 16, weight: .medium)){
        super.init(frame: .zero)
        setup(title: title, color: color, textColor: textColor, font: font)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //MARK: - UI
    private func setup(title: String, color: UIColor, textColor: UIColor, font: UIFont){
        let label = UILabel()
        self.addSubview(label)
        label.text = title
        label.font = font
        label.textColor = textColor
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 17).isActive = true
        label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 10).isActive = true
        label.topAnchor.constraint(equalTo: self.topAnchor, constant: 1).isActive = true
        label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 1).isActive = true
        
        self.backgroundColor = color
        self.layer.cornerRadius = 10
        self.isUserInteractionEnabled = true
    }
    
}

extension UIColor{
    public static let success = UIColor(named: "Success", in: Bundle.module, compatibleWith: nil)!
    public static let error = UIColor(named: "Error", in: Bundle.module, compatibleWith: nil)!
    public static let warning = UIColor(named: "Warning", in: Bundle.module, compatibleWith: nil)!
}
