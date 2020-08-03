import Foundation

public final class IfClauseInfoByPathProviderImpl: IfClauseInfoByPathProvider {
    public init() {
    }
    
    public func ifClauseInfo(path: String) -> IfClauseInfo? {
        let flagName = "MIXBOX_ENABLE_IN_APP_SERVICES"
        
        switch (path as NSString).pathExtension.lowercased() {
        case "swift":
            if (path as NSString).lastPathComponent == "EnsureReleaseAppIsNotAffected.swift" {
                // This is the only exception.
                
                return IfClauseInfo(
                    clauseOpening: "#if !\(flagName)",
                    clauseClosing: "#endif"
                )
            } else {
                return IfClauseInfo(
                    clauseOpening: "#if \(flagName)",
                    clauseClosing: "#endif"
                )
            }
        case "h", "m", "mm", "c", "cxx", "cpp", "c++", "cc", "hh", "hm", "hpp", "hxx":
            return IfClauseInfo(
                clauseOpening: "#ifdef \(flagName)",
                clauseClosing: "#endif"
            )
        default:
            return nil
        }
    }
}
