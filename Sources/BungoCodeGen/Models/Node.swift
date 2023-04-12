import Foundation

class Node<Value> {
    var value: Value

    weak var parent: Node?
    var children: [Node] = []

    init(value: Value) {
        self.value = value
    }

    @discardableResult
    func add(child: Node) -> Node {
        children.append(child)
        child.parent = self

        return child
    }

    func traverse(_ handler: (Node) throws -> Void) rethrows {
        try handler(self)

        for child in children {
            try child.traverse(handler)
        }
    }

    var path: [Node] {
        if let parent {
            return parent.path + [self]
        } else {
            return [self]
        }
    }
}

extension Node where Value: Equatable {
    func child(withValue value: Value) -> Node<Value> {
        for child in children where child.value == value {
            return child
        }

        return add(child: .init(value: value))
    }
}
