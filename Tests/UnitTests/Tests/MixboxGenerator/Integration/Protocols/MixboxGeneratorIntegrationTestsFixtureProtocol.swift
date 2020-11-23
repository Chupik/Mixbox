import Foundation

protocol MixboxGeneratorIntegrationTestsFixtureBaseProtocolFromSameFile {
    var _mixboxGeneratorIntegrationTestsFixtureBaseProtocolFromSameFileProperty: Int { get }
    func mixboxGeneratorIntegrationTestsFixtureBaseProtocolFromSameFileFunction()
}

// swiftlint:disable syntactic_sugar implicitly_unwrapped_optional
protocol MixboxGeneratorIntegrationTestsFixtureProtocol:
    MixboxGeneratorIntegrationTestsFixtureBaseProtocolFromSameFile,
    MixboxGeneratorIntegrationTestsFixtureBaseProtocolFromOtherFile
{
    // Number of arguments
    func function()
    func function(argument0: Int, argument1: Int)
    
    // Labels
    func functionWithNeitherLabelNorArgumentName(_: Int)
    func function(_ noLabel: Int)
    func function(label: Int)
    
    // Throwing
    func throwingFunction() throws
    
    // Return value
    func function() -> Int
    func function() -> Int?
    func function() -> Int??
    func function() -> [Int]
    func function() -> [Int: Int]
    func function() -> () -> ()
    
    // Argument types: Optional
    
    func function(optional: Int?)
    func function(doubleOptional: Int??)
    func function(otherWayOfSpecifyingOptionality: Optional<Int>)
    
    // Argument types: Tuples
    
    func function(tuple: (Int, Int))
    
    // Argument types: Variadic
    
    // TODO: Fix
    // func function(variadic: Int...)
    
    // Argument types: Generic
    //
    // Docs:
    // - Parameters clause:
    //   https://docs.swift.org/swift-book/ReferenceManual/GenericParametersAndArguments.html#grammar_generic-parameter-clause
    // - Where clause:
    //   https://docs.swift.org/swift-book/ReferenceManual/GenericParametersAndArguments.html#grammar_generic-where-clause
    
    func functionGeneric<T>(generic: T)
    func functionGeneric<T, U>(generic: T, generic: U)
    
    func functionGenericWithConstraints_parameters_0<T: Protocol0>(
        generic: T)
    
    func functionGenericWithConstraints_parameters_0_and_1<T: Protocol0 & Protocol1>(
        generic: T)
    
    // TODO: Fix.
    //
    // func functionGenericWithConstraints_where_0<T>(
    //     generic: T)
    //     where
    //     T: Protocol0
    //
    // func functionGenericWithConstraints_where_0_and_1<T>(
    //     generic: T)
    //     where
    //     T: Protocol0 & Protocol1
    //
    // func functionGenericWithConstraints_where_0_comma_1<T>(
    //     generic: T)
    //     where
    //     T: Protocol0,
    //     T: Protocol1
    //
    // func functionGenericWithConstraints_parameters_0_1_where_2_and_3_comma_4<T: Protocol0 & Protocol1>(
    //     generic: T)
    //     where
    //     T: Protocol2 & Protocol3,
    //     T: Protocol4
    
    // Argument types: Closures: Non-escaping
    
    func function(closure: () -> ())
    func function(autoclosure: @autoclosure () -> Int)
    
    // Argument types: Closures: Escaping
    
    func function(escapingClosure: @escaping () -> ())
    func function(escapingAutoclosure: @escaping @autoclosure () -> Int)
    func function(escapingClosureWithTypealias: @escaping Completion)
    func function(escapingClosureWithGenericTypealias: @escaping GenericClosureHolder<Int, Int>.Closure)
    
    // Argument types: Closures: Not really
    
    func function(closureLikeArgumentOfImplicitlyUnwrappedOptionalType: (() -> ())!)
    func function(closureLikeArgumentOfOptionalType: (() -> ())?)
    func function(closureLikeArgumentOfArrayType: [() -> ()])
    func function(closureLikeArgumentOfDictionaryType: [Int: () -> ()])
    
    // Argument types: Closures: Other
    
    func function(
        closureWithPoorlyWrittenAttributes: @escaping(Int?) -> ())
    
    // Function attributes
    // TODO: Test more attributes, attributes with labels, also access modifiers.
    
    @inlinable
    func inlinableFunction()
    
    @available(iOS 10.0, *)
    func availableSince10Function()
    
    @available(iOS 999.0, *)
    func availableSince999Function()
    
    // Propertes
    
    var gettable: Int { get }
    var settable: Int { get set }
    
    var gettableClosure: () -> () { get }
    var gettableOptional: Int? { get }
    var gettableArray: [Int?]? { get }
    
    // Extensions
    
    func functionThatIsAlsoInExtension(_ someArgumentName: Int)
}

extension MixboxGeneratorIntegrationTestsFixtureProtocol {
    func functionThatIsAlsoInExtension(_ someDifferentArgumentName: Int) {}
}
