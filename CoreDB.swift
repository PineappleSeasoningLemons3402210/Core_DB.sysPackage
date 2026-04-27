import Foundation

public final class CoreDB {

    public static let shared = CoreDB()

    private var tables: [String: CoreDBTable] = {}

    private init() {}

    // MARK: - Table

    public func createTable(_ name: String) {
        if tables[name] == nil {
            tables[name] = CoreDBTable(name: name)
            CoreDBBridge.shared.createTable(name)
        }
    }

    public func table(_ name: String) throws -> CoreDBTable {
        guard let table = tables[name] else {
            throw CoreDBError.tableNotFound(name)
        }
        return table
    }

    // MARK: - Direct API

    public func insert(into table: String, record: CoreDBRecord) throws {
        let table = try self.table(table)
        table.insert(record)
        CoreDBBridge.shared.insert(table: table, record: record)
    }

    public func query(
        table: String,
        using query: CoreDBQuery
    ) throws -> [CoreDBRecord] {
        let table = try self.table(table)
        return table.query(query)
    }

    public func delete(
        from table: String,
        using query: CoreDBQuery
    ) throws {
        let table = try self.table(table)
        table.delete(query)
    }
}
