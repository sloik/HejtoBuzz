
import Foundation
import AliasWonderland

extension FeaturesFactory {

    struct InMemoryStore {
        var _setValue:  Consumer2I<Any,Key>
        var _objectForKey: Closure<Key,Any?>

        internal init(
            setValue: @escaping Consumer2I<Any, FeaturesFactory.InMemoryStore.Key>,
            objectForKey: @escaping Closure<FeaturesFactory.InMemoryStore.Key, Any?>
        ) {
            self._setValue = setValue
            self._objectForKey = objectForKey
        }
    }
}

extension FeaturesFactory.InMemoryStore {

    enum Key: Hashable {
        // user token from login
        case token
    }

    func set(for key: Key) -> (Any) -> Void {
        return { (value: Any) in
            set(value, forKey: key)
        }
    }

    func set(_ value: Any, forKey key: Key) {
        _setValue(value, key)
    }

    func object(for key: Key) -> Any? {
        _objectForKey( key )
    }

    func object<T>(for key: Key) -> T? {
        _objectForKey( key ) as? T
    }
}

extension FeaturesFactory.InMemoryStore {

    static var prod: Self {
        .init(
            setValue: { value, key in inMemoryStore.updateValue(value, forKey: key) },
            objectForKey: { key in inMemoryStore[key] }
        )
    }

    static var mock: Self {
        .init(
            setValue: {_,_ in },
            objectForKey: { _ in .none }
        )
    }
}

private var inMemoryStore: [FeaturesFactory.InMemoryStore.Key : Any] = [:]
