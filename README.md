# Landing Page Flutter Application

A modern, responsive Flutter application that replicates a professional landing page design with course offerings and user-friendly navigation.

## Features

- **Multi-Screen Navigation**: Bottom navigation bar with persistent state across screens
- **Responsive Design**: Optimized for Android devices with proper scaling
- **Course Management**: Dynamic course listings with search functionality
- **Interactive UI**: Smooth animations and transitions
- **Asset Management**: Optimized image loading and display

## Screens

### Home Screen
- Hero section with brand messaging
- Course grid with instructor information
- Teacher showcase
- Testimonial/quote section
- Footer with social links

### Online Courses Screen
- Search functionality with real-time filtering
- Category sections (Cyber Security, Network Administrator, Cryptography)
- Course cards with pricing and enrollment information
- Horizontal scrolling course lists

## Getting Started

### Prerequisites
- Flutter SDK (3.7.2 or higher)
- Dart SDK
- Android Studio or VS Code
- Android device/emulator

### Installation

1. Clone the repository:
```bash
git clone [your-repository-url]
cd landing_page
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                 # Application entry point
├── screen/
│   ├── home_screen.dart      # Main landing page
│   ├── online_course.dart    # Course listings
│   ├── course_card.dart      # Individual course components
│   └── search_filter.dart    # Search functionality
└── widgets/
    ├── course_grid.dart      # Course grid layout
    ├── quote_card.dart       # Testimonial cards
    └── quote_list.dart       # Quote listings
```

## Assets

All images are stored in the `asset/images/` directory and properly declared in `pubspec.yaml`.

## Dependencies

- flutter: SDK
- cupertino_icons: ^1.0.8

## Development Notes

- Uses StatefulWidget for screens requiring state management
- Implements proper asset path management
- Follows Flutter best practices for responsive design
- Modular component architecture for reusability

## Screenshots

[Add your application screenshots here]

## License

This project is created for educational purposes.

---

**Developer**: [Your Name]
**Version**: 1.0.0
**Last Updated**: May 30, 2025
