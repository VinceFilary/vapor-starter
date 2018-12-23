import Vapor


//extension TodosController: RouteCollection {
//    
//    func boot(router: Router) throws {
//        
//        let todosGroup = router.grouped("todos")
//        
//        todosGroup.get(use: todos)
//        todosGroup.post(use: create)
//        todosGroup.delete(Todo.parameter, use: delete)
//    }
//}
//
//final class TodosController {
//    
//    
//    func todos(_ request: Request) throws -> Future<[Todo]> {
//    
//        return Todo.query(on: request).all()
//    }
//    
//    func create(_ request: Request) throws -> Future<Todo> {
//        return try request.content.decode(Todo.self).flatMap { todo in
//            return todo.save(on: request)
//        }
//    }
//
//    func delete(_ request: Request) throws -> Future<HTTPStatus> {
//        return try request.parameters.next(Todo.self).flatMap { todo in
//            return todo.delete(on: request)
//        }.transform(to: .created)
//    }
//}
