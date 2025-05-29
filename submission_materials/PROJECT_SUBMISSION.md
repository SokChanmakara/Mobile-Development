# Flutter Landing Page Application - Project Submission

## 1. Short Description

### Development Process Overview
This Flutter application was developed to replicate a modern landing page design with emphasis on user experience and responsive design. The development process involved careful analysis of the provided Figma design and implementation of a multi-screen application with navigation capabilities.

### Tools Used
- **Flutter Framework**: Version 3.7.2+ for cross-platform mobile development
- **Dart Programming Language**: For application logic and UI implementation
- **Visual Studio Code**: Primary IDE for development
- **Git**: Version control system for project management
- **Android Studio**: For Android emulation and testing

### Project Structure
The application follows a clean architecture pattern with organized folder structure:
- `lib/main.dart`: Main application entry point with navigation wrapper
- `lib/screen/`: Contains all screen components (HomeScreen, OnlineCourse, SearchFilter)
- `lib/widgets/`: Reusable UI components (CourseGrid, QuoteCard, QuoteList)
- `asset/images/`: Application assets including logos, images, and icons

### Key Features Implemented
1. **Multi-Screen Navigation**: Implemented bottom navigation bar with persistent state
2. **Home Screen**: Complete landing page with hero section, course grid, teacher showcase, and footer
3. **Online Courses Screen**: Search functionality with category sections and course listings
4. **Dynamic Content**: Course cards with pricing, instructor information, and enrollment details
5. **Responsive Design**: Optimized for standard Android screen sizes
6. **Search Functionality**: Real-time search with filtered results display

### Challenges Encountered
1. **Asset Path Management**: Initially faced issues with image rendering due to incorrect asset paths. Resolved by updating from 'assets/images/' to 'asset/images/' and properly declaring assets in pubspec.yaml.

2. **Bottom Navigation State Management**: Implementing persistent bottom navigation across screens while maintaining proper state management required creating a navigation wrapper component.

3. **UI Overflow Issues**: Encountered "bottom overflow by 134 pixels" error which was resolved by implementing SingleChildScrollView for proper content scrolling.

4. **Dynamic Text Management**: Created a flexible system for managing dynamic content using data models to allow easy text updates without code modifications.

5. **Course Grid Integration**: Successfully integrated horizontal scrolling course grids with proper spacing and responsive design across different screen sections.

### Design Implementation Highlights
- **Color Scheme**: Implemented deep orange accent colors for selected states and consistent grey tones for unselected elements
- **Typography**: Used appropriate font weights and sizes to create visual hierarchy
- **Spacing**: Maintained consistent padding and margins throughout the application
- **Component Reusability**: Created modular components for courses, quotes, and category sections

### Technical Decisions
- Used StatefulWidget for screens requiring state management (navigation, search)
- Implemented ListView.builder for efficient rendering of dynamic content
- Applied proper image asset management with error handling
- Created responsive layouts using Flexible and Expanded widgets

## 2. Screenshots

### Home Screen
The home screen faithfully reproduces the Figma design with:
- Header with logo and navigation icons
- Hero section with "Unlock your potential with Worktency" messaging
- Call-to-action buttons for course exploration and educator registration
- Horizontal scrolling course grid with instructor information
- Teacher showcase section
- Quote/testimonial section
- Footer with social media links and company information

### Online Courses Screen
The online courses screen includes:
- Search bar with rounded corners and proper iconography
- Category sections with horizontal scrolling course cards
- Course listings with detailed information (language, participants, pricing)
- Proper integration of the course grid component
- Consistent navigation and header design

### Navigation Flow
- Bottom navigation bar with three tabs: Explore, My Courses, Online Courses
- Selected tab highlighting in deep orange as per design requirements
- Smooth transitions between screens while maintaining navigation state

## 3. GitHub Repository

**Repository URL**: [Your GitHub Repository Link Here]

### Repository Structure
```
landing_page/
├── lib/
│   ├── main.dart                 # Main app entry point
│   ├── screen/
│   │   ├── home_screen.dart      # Landing page implementation
│   │   ├── online_course.dart    # Courses listing screen
│   │   ├── course_card.dart      # Individual course card component
│   │   └── search_filter.dart    # Search functionality component
│   └── widgets/
│       ├── course_grid.dart      # Course grid layout
│       ├── quote_card.dart       # Testimonial/quote card
│       └── quote_list.dart       # Quote listing component
├── asset/
│   └── images/                   # Application images and icons
├── pubspec.yaml                  # Project dependencies and assets
└── README.md                     # Project documentation
```

### Key Commits
- Initial project setup and basic structure
- Home screen implementation with responsive design
- Bottom navigation integration
- Online courses screen with search functionality
- Asset management and image rendering fixes
- UI enhancements and design refinements

### Installation Instructions
1. Clone the repository: `git clone [repository-url]`
2. Navigate to project directory: `cd landing_page`
3. Install dependencies: `flutter pub get`
4. Run the application: `flutter run`

### Testing Information
- Tested on Android emulator (API level 33)
- Verified responsive design across different screen sizes
- Validated navigation flow and state management
- Confirmed asset loading and image rendering

---

**Developed by**: [Your Name]
**Submission Date**: May 30, 2025
**Flutter Version**: 3.7.2+