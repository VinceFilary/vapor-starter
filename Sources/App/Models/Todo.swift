import FluentPostgreSQL
import Vapor


final class Todo: PostgreSQLModel {

    var id: Int?

    var title: String

    /// Creates a new `Todo`.
    init(id: Int? = nil, title: String) {
        self.id = id
        self.title = title
    }
}


extension Todo: Content { }
extension Todo: Parameter { }
extension Todo: Migration { }
