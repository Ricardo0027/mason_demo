# 🚀 Flutter Mason Clean Architecture Demo

A real-world, production-ready Flutter demo showcasing:

- ✅ **Clean Architecture**
- 🔨 **BLoC State Management**
- 🧱 **Mason Bricks for Code Generation**
- ⚙️ **CLI-based Feature Scaffolding**

> Build once, scale forever. Automate your architecture with `mason` and focus on delivering
> features faster.

---

## 📸 Preview

- 🔁 **Reactive BLoC State Management**
- 🧱 **Auto-generated features with `mason`**
- 🧠 **Layered Clean Architecture (domain, data, presentation)**

---

## 📂 Project Structure

```
lib/
├── core/             # Common utilities, themes, constants
├── features/
│   └── {{feature}}/  # Mason-generated folder
│       ├── data/     # Data sources, models, repos
│       ├── domain/   # Use cases, entities
│       ├── presentation/
│           ├── bloc/ # Bloc/Event/State
│           └── views/
├── app.dart          # Root widget + router
└── main.dart         # App entry point
```

---

## 🧱 Mason Bricks Setup

### 1. Install Mason

```bash
dart pub global activate mason_cli
```

### 2. Add Your Brick

```bash
mason add feature_bloc --git-url https://github.com/your-org/your-brick-repo.git
```

### 3. Generate Feature

```bash
mason make feature_bloc
```

🧠 **Tip:** Customize bricks for:

- ✅ Full feature modules (UI + BLoC + domain + data)
- 🔁 BLoC only
- 🧩 UI-only screens
- 🧪 Widget or bloc test generators

---

## 💡 Getting Started

### Prerequisites

- Flutter 3.16 or later
- Dart 3.x
- Mason CLI: `dart pub global activate mason_cli`

### Clone & Run

```bash
git clone https://github.com/himanshuagarwal77225/mason_demo.git
cd mason_demo
flutter pub get
flutter run
```

---

## 🧪 Testing

```bash
flutter test
```

Includes:

- ✅ Use Case Unit Tests
- ✅ BLoC Logic Tests
- ✅ Widget Rendering Tests

---

## 🧱 Creating Your Own Brick

```bash
mason new my_custom_brick
```

This generates:

```
my_custom_brick/
├── brick.yaml
└── __brick__/
    └── template_files_here.dart
```

Use `{{feature_name}}`, `{{name.pascalCase()}}` in templates.

To learn more:

🔗 [Official Mason Docs](https://docs.brickhub.dev)

---

## 🧭 Generated Feature Structure

```
lib/features/{{feature_name}}/
├── data/
│   ├── datasources/
│   └── repositories/
├── domain/
│   ├── entities/
│   └── usecases/
├── presentation/
│   ├── bloc/
│   └── views/
```

Everything is structured according to **Clean Architecture** and **BLoC** best practices.

---

## 📌 Resources & References

- 📘 [Flutter Docs](https://flutter.dev/docs)
- 🧱 [Mason CLI Docs](https://docs.brickhub.dev)
- 🔁 [Bloc Package](https://bloclibrary.dev)
-

🧼 [Clean Architecture Overview](https://github.com/ResoCoder/flutter-tdd-clean-architecture-course)

- 🧱 [BrickHub Registry](https://brickhub.dev)

---

## 🙌 Contributing

Got ideas? Bricks? Issues?  
Open a PR or start a discussion — let’s build better Flutter apps, faster.

---

## 📄 License

MIT © [Himanshu Agarwal](https://github.com/himanshuagarwal77225)

---
