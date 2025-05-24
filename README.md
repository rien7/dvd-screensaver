# DVD ScreenSaver

## Overview
DVD ScreenSaver is a SwiftUI-based macOS screensaver application that emulates the classic DVD logo bouncing animation. The logo moves across the screen, bouncing off the edges and changing to a random color upon each collision. Clicking the DVD logo terminates the screensaver. The application is designed to display on all interfaces, including the macOS lock screen.

## Features
- **Bouncing DVD Logo**: The iconic DVD logo moves across the screen, bouncing off the window boundaries.
- **Random Color Changes**: The logo changes to a random color each time it hits an edge.
- **Lock Screen Compatibility**: The screensaver can be displayed on all interfaces, including the macOS lock screen, using the SkyLightWindow library.

## Dependencies
This project uses the following external library:
- **[SkyLightWindow](https://github.com/Lakr233/SkyLightWindow)**: A library that enables the screensaver to be displayed on all macOS interfaces, including the lock screen.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/rien7/dvd-screensaver 
   ```
2. Open the project in Xcode.
3. Ensure the SkyLightWindow library is properly integrated:
   - Add the SkyLightWindow library to your project via Swift Package Manager or by following the instructions in the [SkyLightWindow GitHub repository](https://github.com/Lakr233/SkyLightWindow).
4. Build and run the project in Xcode.
5. To set the application as a screensaver, configure it in macOS System Settings under "Screen Saver."

## Usage
- Launch the screensaver, and the DVD logo will start bouncing across the screen.
- The logo changes color randomly when it hits the window's edges.
- **Click the DVD logo to exit the screensaver.**
- The screensaver is compatible with all macOS interfaces, including the lock screen, thanks to the SkyLightWindow library.

## Code Structure
- **ContentView.swift**: The main SwiftUI view that handles the DVD logo's animation, collision detection, color changes, and click-to-exit functionality.
- **Color Extension**: Adds a `random` static property to generate random colors for the logo.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments
- The SkyLightWindow library by [Lakr233](https://github.com/Lakr233) for enabling lock screen compatibility.
- Inspired by the classic DVD screensaver from older DVD players.
