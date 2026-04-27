# Core_DB.sysPackage

> A lightweight, cross-platform database engine for modern mobile apps.

**CoreDB** is an embedded database engine built with Kotlin Multiplatform, designed to provide a fast, simple, and consistent way to manage structured data across **iOS** and **Android**.

Inspired by the simplicity of embedded databases like SQLite, CoreDB focuses on developer experience, clean APIs, and portability.

---

## ✨ Highlights

* ⚡ **Fast & lightweight** — minimal overhead, optimized for mobile
* 📱 **Cross-platform** — shared core for iOS and Android
* 🧠 **Simple query system** — intuitive filtering (`where`, `and`)
* 🗂 **Table-based structure** — organize data cleanly
* 🔌 **Easy integration** — drop into your app with minimal setup
* 🧩 **Modular architecture** — extend and customize easily

---

## 🏗 Project Structure

```text
coredb/
 ├── core/        # Shared database engine (Kotlin Multiplatform)
 ├── android/     # Android integration layer
 ├── ios/         # iOS integration layer
 ├── examples/    # Sample apps and usage
 ├── docs/        # Documentation and architecture notes
 ├── scripts/     # Build and automation scripts
 └── .github/     # CI/CD and templates
```

---

## 🚀 Getting Started

### Requirements

* Kotlin 1.9+
* Android Studio / IntelliJ
* Xcode (for iOS integration)

---

## 📦 Installation

> ⚠️ CoreDB is currently in early development (pre-release).

### Android (Gradle)

```kotlin
dependencies {
    implementation("com.coredb:coredb:0.1.0")
}
```

### iOS (Swift Package Manager)

```swift
.package(url: "https://github.com/your-username/coredb.git", from: "0.1.0")
```

---

## 💻 Usage Example

```kotlin
val db = Database()

db.createTable("users")
val users = db.getTable("users")!!

users.insert(mapOf(
    "name" to "Elijah",
    "age" to 16
))

val result = users.query(
    Query().where("name", "Elijah")
)

println(result)
```

---

## 🧠 Core Concepts

### Database

The main container that manages all tables.

### Table

A collection of records (similar to a table in traditional databases).

### Query

A flexible filtering system used to retrieve or delete data.

---

## 🗺 Roadmap

### Phase 1 — Core Engine

* [x] Database and table system
* [x] Insert / delete operations
* [x] Basic query system

### Phase 2 — Persistence

* [ ] JSON file storage
* [ ] Auto-save and load
* [ ] Data recovery

### Phase 3 — Performance

* [ ] Indexing system
* [ ] Query optimization

### Phase 4 — Advanced Features

* [ ] Transactions (commit / rollback)
* [ ] Schema validation
* [ ] Relationships

### Phase 5 — Platform Support

* [ ] Android integration
* [ ] iOS Swift wrapper

### Phase 6 — Release

* [ ] v0.1.0 stable release
* [ ] Documentation site
* [ ] Developer examples

---

## 📊 Comparison

| Feature          | CoreDB | SQLite |
| ---------------- | ------ | ------ |
| Cross-platform   | ✅      | ✅      |
| Lightweight      | ✅      | ✅      |
| Simple API       | ✅      | ❌      |
| Built for mobile | ✅      | ✅      |

---

## 🤝 Contributing

Contributions are welcome!

If you'd like to help:

1. Fork the repository
2. Create a feature branch
3. Submit a pull request

---

## 🧪 Examples

Check the `examples/` folder for:

* Basic usage
* Android demo app
* iOS demo integration

---

## 📄 License

CoreDB is released under the MIT License.

---

## 🌱 Vision

CoreDB aims to become a developer-friendly embedded database engine that balances **simplicity**, **performance**, and **cross-platform consistency**—without the complexity of traditional database systems.

---

## ⭐ Support

If you find this project useful:

* Star the repository ⭐
* Share it with others
* Contribute ideas or features

---
