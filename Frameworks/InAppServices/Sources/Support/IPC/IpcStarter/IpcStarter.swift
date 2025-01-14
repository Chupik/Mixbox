#if MIXBOX_ENABLE_IN_APP_SERVICES

import MixboxIpc

public protocol IpcStarter: AnyObject {
    func start(
        commandsForAddingRoutes: [IpcMethodHandlerRegistrationTypeErasedClosure])
        throws
        -> StartedIpc
}

#endif
