import Foundation

public final class CoreDBTable {

    private let name: String
    private var rows: [CoreDBRecord] = []

    init(name: String) {
        self.name = name
    }

    public func insert(_ record: CoreDBRecord) {
        rows.append(record)
    }

    public func query(_ query: CoreDBQuery) -> [CoreDBRecord] {
        return rows.filter { query.matches($0) }
    }

    public func delete(_ query: CoreDBQuery) {
        rows.removeAll { query.matches($0) }
    }

    public func all() -> [CoreDBRecord] {
        return rows
    }
}
