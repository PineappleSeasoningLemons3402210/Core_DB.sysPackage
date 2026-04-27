import Foundation

final class CoreDBBridge {

    static let shared = CoreDBBridge()

    private init() {}

    // Future: connect to Kotlin Multiplatform
    func createTable(_ name: String) {}

    func insert(table: String, record: CoreDBRecord) {}

    func query(table: String, query: CoreDBQuery) -> [CoreDBRecord] {
        return []
    }
}
