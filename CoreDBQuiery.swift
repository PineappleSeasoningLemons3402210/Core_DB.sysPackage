import Foundation

public final class CoreDBQuery {

    private var filters: [(CoreDBRecord) -> Bool] = []

    public init() {}

    @discardableResult
    public func whereKey(_ key: String, equals value: Any) -> Self {
        filters.append { $0[key] as? AnyHashable == value as? AnyHashable }
        return self
    }

    @discardableResult
    public func and(_ key: String, equals value: Any) -> Self {
        return whereKey(key, equals: value)
    }

    func matches(_ record: CoreDBRecord) -> Bool {
        return filters.allSatisfy { $0(record) }
    }
}
