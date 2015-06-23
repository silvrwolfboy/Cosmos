import UIKit

/**

Defaults setting values.

*/
struct CosmosDefaultSettings {
  init() {}
  
  static let defaultColor = UIColor(red: 1, green: 149/255, blue: 0, alpha: 1)
  
  
  // MARK: - Star settings
  // -----------------------------

  
  /// Border color of an empty star.
  static let borderColorEmpty = defaultColor
  
  /// Width of the border for the empty star.
  static let borderWidthEmpty: Double = 1
  
  /// Background color of an empty star.
  static let colorEmpty = UIColor.clearColor()
  
  /// Background color of a filled star.
  static let colorFilled = defaultColor
  
  /**

  Defines how the star is filled when the rating value is not an integer value. It can either show full stars, half stars or stars partially filled according to the rating value.

  */
  static let fillMode = StarFillMode.Full
  
  /// Raiting value that is shown in the storyboard by default.
  static let rating: Double = 2.718281828
  
  /// Distance between stars.
  static let starMargin: Double = 5
  
  /**
  
  Array of points for drawing the star with size of 100 by 100 pixels. Supply your points if you need to draw a different shape.
  
  */
  static let starPoints: [CGPoint] = [
    CGPoint(x: 49.5,  y: 0.0),
    CGPoint(x: 60.5,  y: 35.0),
    CGPoint(x: 99.0, y: 35.0),
    CGPoint(x: 67.5,  y: 58.0),
    CGPoint(x: 78.5,  y: 92.0),
    CGPoint(x: 49.5,    y: 71.0),
    CGPoint(x: 20.5,  y: 92.0),
    CGPoint(x: 31.5,  y: 58.0),
    CGPoint(x: 0.0,   y: 35.0),
    CGPoint(x: 38.5,  y: 35.0)
  ]
  
  /// Size of a single star.
  static var starSize: Double = 20

  /// The total number of stars to be shown.
  static let totalStars = 5
  
  
  // MARK: - Text settings
  // -----------------------------
  
  
  /// Color of the text.
  static let textColor = defaultColor
  
  /// Font for the text.
  static let textFont = UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote)
  
  /// Distance between the text and the stars.
  static let textMargin: Double = 5
  
  /// Calculates the size of the default text font. It is used for making the text size configurable from the storyboard.
  static var textSize: Double {
    get {
      return Double(textFont.pointSize)
    }
  }
  
  
  // MARK: - Touch settings
  // -----------------------------

  /// The lowest rating that user can set by touching the stars.
  static let minTouchRating: Double = 1
  
  /// When `true` the star fill level is updated when user touches the cosmos view. When `false` the Cosmos view only shows the rating and does not act as the input control.
  static let updateOnTouch = true
}
