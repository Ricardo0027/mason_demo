# Mason Demo: Flutter Application with Clean Architecture 🚀

![Flutter](https://img.shields.io/badge/Flutter-3.0.0-blue?style=flat-square) ![Dart](https://img.shields.io/badge/Dart-2.13.0-blue?style=flat-square) ![Clean Architecture](https://img.shields.io/badge/Clean%20Architecture-1.0.0-orange?style=flat-square)

Welcome to the **Mason Demo** repository! This project showcases a Flutter application built using Clean Architecture principles. The app demonstrates the use of Mason, a tool for code generation, along with the BLoC (Business Logic Component) pattern to manage state efficiently.

## Table of Contents

1. [Overview](#overview)
2. [Features](#features)
3. [Technologies Used](#technologies-used)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Folder Structure](#folder-structure)
7. [Contributing](#contributing)
8. [License](#license)
9. [Releases](#releases)

## Overview

The **Mason Demo** is designed to help developers understand how to structure a Flutter application using Clean Architecture. By separating concerns into different layers, this architecture promotes scalability and maintainability. The app is a simple demonstration but provides a solid foundation for building more complex applications.

## Features

- **Clean Architecture**: Clear separation of concerns with layers for presentation, domain, and data.
- **BLoC Pattern**: Efficient state management using the BLoC pattern.
- **Code Generation**: Utilizes Mason for generating boilerplate code quickly.
- **Demo App**: A fully functional demo that illustrates the core concepts.
- **Example Project**: Serves as a reference for developers starting with Flutter and Clean Architecture.

## Technologies Used

- **Flutter**: The UI toolkit for building natively compiled applications.
- **Dart**: The programming language used for Flutter development.
- **BLoC**: A design pattern for managing state in Flutter applications.
- **Mason**: A tool for code generation in Dart and Flutter projects.
- **Clean Architecture**: A software design philosophy that promotes separation of concerns.

## Installation

To get started with the **Mason Demo**, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/Ricardo0027/mason_demo.git
   ```

2. Navigate to the project directory:
   ```bash
   cd mason_demo
   ```

3. Install the dependencies:
   ```bash
   flutter pub get
   ```

4. Run the application:
   ```bash
   flutter run
   ```

## Usage

After installation, you can start exploring the app. The main screen will display a simple interface that demonstrates the functionality of the app. You can interact with various components to see how the BLoC pattern manages state.

### Code Generation with Mason

To generate code using Mason, follow these steps:

1. Ensure you have Mason installed. If not, you can install it via Dart:
   ```bash
   dart pub global activate mason_cli
   ```

2. Navigate to the project directory and run the following command:
   ```bash
   mason make <brick-name>
   ```

Replace `<brick-name>` with the name of the brick you want to generate.

## Folder Structure

The folder structure of the project is organized as follows:

```
mason_demo/
├── lib/
│   ├── presentation/
│   │   ├── widgets/
│   │   └── screens/
│   ├── domain/
│   │   ├── entities/
│   │   └── usecases/
│   ├── data/
│   │   ├── models/
│   │   └── repositories/
│   └── main.dart
├── test/
│   ├── presentation/
│   ├── domain/
│   └── data/
└── pubspec.yaml
```

- **lib/**: Contains the main application code.
  - **presentation/**: Holds UI components.
  - **domain/**: Contains business logic and use cases.
  - **data/**: Manages data sources and models.
- **test/**: Contains unit tests for the application.
- **pubspec.yaml**: Configuration file for the project.

## Contributing

Contributions are welcome! If you want to contribute to the **Mason Demo**, please follow these steps:

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/YourFeature
   ```
3. Make your changes and commit them:
   ```bash
   git commit -m "Add your feature"
   ```
4. Push to your fork:
   ```bash
   git push origin feature/YourFeature
   ```
5. Create a pull request.

Please ensure your code follows the project's style guidelines.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Releases

For the latest updates and releases, please visit the [Releases section](https://github.com/Ricardo0027/mason_demo/releases). Here, you can download the latest version of the app and view the change logs.

---

Thank you for checking out the **Mason Demo**! We hope this project helps you in your Flutter journey. If you have any questions or suggestions, feel free to reach out. Happy coding!