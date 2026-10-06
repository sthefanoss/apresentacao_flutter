import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()
  }

  // AppKit's default: a click on an inactive window only activates it and is
  // not forwarded to the view, so the nav buttons needed a second click
  // whenever the window wasn't already focused. Making the window key before
  // the event reaches the responder chain lets the same click count.
  override func sendEvent(_ event: NSEvent) {
    if event.type == .leftMouseDown, !isKeyWindow {
      makeKey()
    }
    super.sendEvent(event)
  }
}
