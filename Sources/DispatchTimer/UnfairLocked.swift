import Foundation

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
@propertyWrapper
public final class UnfairLocked<Value> {

    private var _value: Value
    private var lock = os_unfair_lock()

    public init(wrappedValue value: Value) {
        _value = value
    }

    public var wrappedValue: Value {
        get { synchronized { $0 } }
        set { synchronized { $0 = newValue } }
    }

    func synchronized<T>(block: (inout Value) throws -> T) rethrows -> T {
        os_unfair_lock_lock(&lock)
        defer { os_unfair_lock_unlock(&lock) }
        return try block(&_value)
    }
}
#endif
