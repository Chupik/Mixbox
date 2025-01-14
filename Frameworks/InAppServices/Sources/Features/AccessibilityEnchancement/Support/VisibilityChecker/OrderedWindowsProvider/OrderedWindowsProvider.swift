#if MIXBOX_ENABLE_IN_APP_SERVICES

public protocol OrderedWindowsProvider: AnyObject {
    func windowsFromTopMostToBottomMost() -> [UIWindow]
    func windowsFromBottomMostToTopMost() -> [UIWindow]
}

extension OrderedWindowsProvider {
    public func windowsFromTopMostToBottomMost() -> [UIWindow] {
        return windowsFromBottomMostToTopMost().reversed()
    }
}

#endif
