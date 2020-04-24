public protocol ElementResolverWithScrollingAndRetries: class {
    func resolveElementWithRetries(
        isPossibleToRetryProvider: IsPossibleToRetryProvider)
        throws
        -> ResolvedElementQuery
}
