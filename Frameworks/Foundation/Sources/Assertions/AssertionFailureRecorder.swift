#if MIXBOX_ENABLE_IN_APP_SERVICES

public protocol AssertionFailureRecorder: AnyObject {
    func recordAssertionFailure(
        message: String,
        fileLine: FileLine)
}

extension AssertionFailureRecorder {
    public func recordAssertionFailure(
        message: String,
        file: StaticString = #filePath,
        line: UInt = #line)
    {
        recordAssertionFailure(
            message: message,
            fileLine: FileLine(
                file: file,
                line: line
            )
        )
    }
}

#endif
