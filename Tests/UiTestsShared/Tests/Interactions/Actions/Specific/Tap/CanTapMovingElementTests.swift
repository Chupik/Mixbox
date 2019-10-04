import MixboxUiTestsFoundation
import XCTest

final class CanTapMovingElementTests: TestCase {
    override func precondition() {
        super.precondition()
        
        openScreen(name: "MovingElementTestsView")
    }
    
    // TODO: Add assertions,
    // make it able to hit moving element.
    func disabled_test() {
        for _ in 0..<10 {
            pageObjects.xcui.movingElement.tap()
        }
    }
}

private final class Screen: BasePageObjectWithDefaultInitializer {
    var movingElement: ViewElement {
        return element("movingElement") {
            $0.id == "movingElement"
        }
    }
}

private extension PageObjects {
    var real: Screen {
        return apps.mainUiKitHierarchy.pageObject()
    }
    var xcui: Screen {
        return apps.mainXcui.pageObject()
    }
}
