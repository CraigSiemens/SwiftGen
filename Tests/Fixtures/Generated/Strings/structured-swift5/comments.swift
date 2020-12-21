// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  /// Some alert body there
  internal static let alertMessage = L10n.tr("LocComments", "alert__message")
  /// Title of the alert
  ///
  /// Title for an alert
  internal static let alertTitle = L10n.tr("LocComments", "alert__title")

  internal enum Apples {
    /// You have %d apples
    ///
    /// A comment with no space above it
    internal static func count(_ p1: Int) -> String {
      return L10n.tr("LocComments", "apples.count", p1)
    }
  }

  internal enum Bananas {
    /// Those %d bananas belong to %@.
    ///
    /// A multiline
    /// comment
    internal static func owner(_ p1: Int, _ p2: Any) -> String {
      return L10n.tr("LocComments", "bananas.owner", p1, String(describing: p2))
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
