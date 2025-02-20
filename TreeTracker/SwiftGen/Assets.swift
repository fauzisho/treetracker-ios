// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  internal typealias AssetColorTypeAlias = NSColor
  internal typealias AssetImageTypeAlias = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  internal typealias AssetColorTypeAlias = UIColor
  internal typealias AssetImageTypeAlias = UIImage
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal enum Assets {
    internal static let forest = ImageAsset(name: "Forest")
    internal static let focus = ImageAsset(name: "focus")
    internal static let gardening = ImageAsset(name: "gardening")
    internal static let phoneViewfinder = ImageAsset(name: "phoneViewfinder")
    internal static let planting = ImageAsset(name: "planting")
    internal static let selfie = ImageAsset(name: "selfie")
    internal static let key = ImageAsset(name: "Key")
    internal static let padlock = ImageAsset(name: "Padlock")
    internal static let add = ImageAsset(name: "add")
    internal static let arrow = ImageAsset(name: "arrow")
    internal static let goback = ImageAsset(name: "goback")
    internal static let logout = ImageAsset(name: "logout")
    internal static let mail = ImageAsset(name: "mail")
    internal static let nextup = ImageAsset(name: "nextup")
    internal static let note = ImageAsset(name: "note")
    internal static let people = ImageAsset(name: "people")
    internal static let person = ImageAsset(name: "person")
    internal static let phone = ImageAsset(name: "phone")
    internal static let profile = ImageAsset(name: "profile")
    internal static let saplingIcon = ImageAsset(name: "sapling_Icon")
    internal static let seed = ImageAsset(name: "seed")
    internal static let settings = ImageAsset(name: "settings")
    internal static let upload = ImageAsset(name: "upload")
    internal static let launchScreenForest = ImageAsset(name: "LaunchScreenForest")
    internal static let launchScreenLogo = ImageAsset(name: "LaunchScreenLogo")
    internal static let logo = ImageAsset(name: "Logo")
    internal static let logoWithTitle = ImageAsset(name: "LogoWithTitle")
    internal static let trees = ImageAsset(name: "Trees")
    internal enum GpsSearchAnimation {
      internal static let gpsLoad0 = ImageAsset(name: "gpsSearchAnimation/gps-load-0")
      internal static let gpsLoad1 = ImageAsset(name: "gpsSearchAnimation/gps-load-1")
      internal static let gpsLoad2 = ImageAsset(name: "gpsSearchAnimation/gps-load-2")
    }
  }
  internal enum Colors {
    internal static let grayDark = ColorAsset(name: "GrayDark")
    internal static let grayLight = ColorAsset(name: "GrayLight")
    internal static let grayMedium = ColorAsset(name: "GrayMedium")
    internal static let primaryGreen = ColorAsset(name: "PrimaryGreen")
    internal static let secondaryGreen = ColorAsset(name: "SecondaryGreen")
    internal static let secondaryOrangeDark = ColorAsset(name: "SecondaryOrangeDark")
    internal static let secondaryOrangeLight = ColorAsset(name: "SecondaryOrangeLight")
    internal static let secondaryRed = ColorAsset(name: "SecondaryRed")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal struct ColorAsset {
  internal fileprivate(set) var name: String

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  internal var color: AssetColorTypeAlias {
    return AssetColorTypeAlias(asset: self)
  }
}

internal extension AssetColorTypeAlias {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  convenience init!(asset: ColorAsset) {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct DataAsset {
  internal fileprivate(set) var name: String

  #if os(iOS) || os(tvOS) || os(OSX)
  @available(iOS 9.0, tvOS 9.0, OSX 10.11, *)
  internal var data: NSDataAsset {
    return NSDataAsset(asset: self)
  }
  #endif
}

#if os(iOS) || os(tvOS) || os(OSX)
@available(iOS 9.0, tvOS 9.0, OSX 10.11, *)
internal extension NSDataAsset {
  convenience init!(asset: DataAsset) {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(name: asset.name, bundle: bundle)
    #elseif os(OSX)
    self.init(name: NSDataAsset.Name(asset.name), bundle: bundle)
    #endif
  }
}
#endif

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  internal var image: AssetImageTypeAlias {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = AssetImageTypeAlias(named: name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    let image = bundle.image(forResource: NSImage.Name(name))
    #elseif os(watchOS)
    let image = AssetImageTypeAlias(named: name)
    #endif
    guard let result = image else { fatalError("Unable to load image named \(name).") }
    return result
  }
}

internal extension AssetImageTypeAlias {
  @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
  @available(OSX, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init!(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

private final class BundleToken {}
