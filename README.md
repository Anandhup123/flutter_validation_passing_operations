# Flutter Form Validation and Navigation

Welcome to the Flutter Form Validation and Navigation project! This repository showcases a simple yet effective way to handle form validation and navigate between screens while passing data using `MaterialPageRoutes`.

## Features

- **Form Validation:** Ensure user inputs are correct and complete.
- **Data Passing:** Seamlessly pass values between screens.
- **Navigation:** Utilize `MaterialPageRoutes` for screen transitions.

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/flutter-validation-value-passing.git
    cd flutter-validation-value-passing
    ```

2. Install dependencies:
    ```sh
    flutter pub get
    ```

3. Run the app:
    ```sh
    flutter run
    ```

## Code Overview

### Main Components

1. **HomeScreen:** 
    - Contains a form with validation logic.
    - Navigates to the ResultScreen with user input data.

    ```dart
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(name: _nameController.text),
      ),
    );
    ```

2. **ResultScreen:**
    - Displays the data passed from the HomeScreen.

    ```dart
    class ResultScreen extends StatelessWidget {
      final String name;
      ResultScreen({required this.name});
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text("Result")),
          body: Center(child: Text("Hello, $name!")),
        );
      }
    }
    ```

### Form Validation Example

```dart
TextFormField(
  decoration: InputDecoration(labelText: 'Name'),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  },
);
