import XCTest
import MixboxFoundation
import MixboxTestsFoundation
import MixboxUiTestsFoundation
import MixboxUiKit

class ImageHashCalculatorTests: TestCase {
    private let calculator = DHashImageHashCalculator()
    
    // Unfortunately, CocoaImageHashing doesn't make constant hashes for constant images on
    // different iOS versions.
    func test___imageHash___is_deterministic() {
        let images = ["size", "text", "color", "original", "aspect", "borders", "not_cat", "lots_of_text"].map {
            UIImage(named: "imagehash_cats/imagehash_cat_\($0)", in: Bundle(for: type(of: self)), compatibleWith: nil).unwrapOrFail()
        }
        
        let hashes = images.map { image in
            UnavoidableFailure.doOrFail {
                try calculator.imageHash(image: image)
            }
        }
        
        func ios121OrHigher(no: UInt64, yes: UInt64) -> UInt64 {
            if UiDeviceIosVersionProvider(uiDevice: UIDevice.current).iosVersion() >= IosVersion(major: 12, minor: 1) {
                return yes
            } else {
                return no
            }
        }
        
        let expectedHashes: [UInt64] = [
            ios121OrHigher(no: 2170628984350433018, yes: 2170628984349908730),
            ios121OrHigher(no: 10817540268901261050, yes: 10817540268901785338),
            2170628984358756090,
            ios121OrHigher(no: 2170628984349908730, yes: 2170628984350433018),
            1012762419733077534,
            3956103203127296,
            16564758914714907379,
            10817599643728672504
        ]
        
        XCTAssertEqual(hashes, expectedHashes)
    }
    
    // There is also another line of code inside "OSImageHashing" that returns "OSHashTypeError".
    // That case is hard to reproduce. This error will not be classified and `imageHash` will
    // just return "OSImageHashing returned OSHashTypeError".
    func test___imageHash___throws_error___for_empty_image() {
        assertThrows(error: "OSImageHashing returned OSHashTypeError. Probable reason: UIImagePNGRepresentation is nil") {
            _ = try calculator.imageHash(image: UIImage())
        }
    }
}
