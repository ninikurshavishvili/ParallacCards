# ParallaxCard 🪐

An interactive iOS app built with SwiftUI that showcases beautiful planet cards with parallax effects and 3D rotation animations.

## ✨ Features

- **Parallax Effect**: Multi-layered background and planet images that move at different speeds creating depth
- **3D Rotation**: Cards rotate in 3D space responding to drag gestures
- **Interactive Gestures**: Drag to tilt and explore the cards with smooth animations
- **Swipeable Cards**: Navigate through multiple planet cards with swipe gestures
- **Custom Page Indicators**: Elegant dot indicators to track your position

## 📱 Screenshots

<p align="center">
  <img src="Screenshots/screenshot1.png" width="250" />
  <img src="Screenshots/screenshot2.png" width="250" />
  <img src="Screenshots/screenshot3.png" width="250" />
</p>

## 🛠 Technologies

- SwiftUI
- iOS 14.0+
- Custom Gestures & Animations

## 🎨 How It Works

The app uses a combination of:
- `DragGesture` for interactive card manipulation
- `offset` modifiers with different ratios to create the parallax effect
- `rotation3DEffect` for realistic 3D card tilting
- `TabView` with page style for smooth card navigation

## 🚀 Getting Started

1. Clone the repository
```bash
git clone https://github.com/ninikurshavishvili/ParallacCards.git
```

2. Open the project in Xcode
```bash
cd ParallacCards
open ParallaxCard/ParallaxCard.xcodeproj
```

3. Build and run the project on your simulator or device

## 📂 Project Structure

```
ParallaxCard/
├── ParallaxCardApp.swift    # App entry point
├── ContentView.swift         # Main view with TabView
├── PlanetCard.swift          # Parallax card component
└── Colors.swift              # Custom color extensions
```

## 👨‍💻 Author

**Nino Kurshavishvili**
- GitHub: [@ninikurshavishvili](https://github.com/ninikurshavishvili)

## 📄 License

This project is available for personal and educational use.

---

⭐️ If you like this project, give it a star!
