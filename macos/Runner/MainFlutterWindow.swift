import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    self.contentViewController = flutterViewController

    // A talk deck reads landscape; default to a 16:9 frame instead of the
    // template's arbitrary size, and keep the window from being squeezed
    // into portrait while still letting it resize.
    let landscapeFrame = NSRect(origin: self.frame.origin, size: NSSize(width: 1280, height: 720))
    self.setFrame(landscapeFrame, display: true)
    self.contentMinSize = NSSize(width: 960, height: 540)

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
