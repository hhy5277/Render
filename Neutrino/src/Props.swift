import UIKit

// MARK: - UIProps

/// Props (short for properties) are a Component's configuration. They are received from above and
/// immutable as far as the Component receiving them is concerned.
/// A Component cannot change its props, but it is responsible for putting together the props of
/// its child Components.
/// Props do not have to just be data -- callback functions may be passed in as props.
public protocol UIPropsProtocol: Codable, ReflectedStringConvertible {
  init()
}

public class UINilProps: UIPropsProtocol {
  static let `nil` = UINilProps()
  public required init() { }
}