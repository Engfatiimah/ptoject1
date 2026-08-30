
# Where's the Event? 🇸🇦

> **Ready to see a side of Saudi you never knew existed?**

Reefs bursting with color. Trails that end at the edge of the world. Cities carved into rock two thousand years ago. Desert nights under a thousand stars. It's all here — most people just never find it.

**Where's the Event?** does the finding for you. Pick what you're craving — diving, hiking, heritage, or camping — and it takes you straight to the best spots in the Kingdom, each with its region, its story, and a local guide one tap away.

For locals who want to rediscover home. For travelers who want the real thing.

**Stop scrolling. Start exploring.**

## Screenshots

### Home

<p align="center">
  <img width="32%" alt="Home" src="https://github.com/user-attachments/assets/77b78c3f-4e96-4a9c-b6c3-be41b0c0f13c" />
  &nbsp;&nbsp;
  <img width="32%" alt="Home scrolled" src="https://github.com/user-attachments/assets/72410f0b-d51a-45d0-8629-28b7302d0a21" />
</p>

### Diving
<p align="center">
  <img width="32%" alt="Diving destinations" src="https://github.com/user-attachments/assets/2738482b-4225-4374-aeab-dda6af3cb8c7" />
  &nbsp;&nbsp;
  <img width="32%" alt="Diving search" src="https://github.com/user-attachments/assets/3093b9b3-d5fd-474c-aa97-ea03a84062a0" />
</p>

### Hiking

<p align="center">
  <img width="32%"  alt="Simulator Screenshot - iPhone 17 - 2026-08-30 at 16 29 33" src="https://github.com/user-attachments/assets/908278ff-07cf-48ef-b03b-c04f9fa337b6" />

  <img width="32%"  alt="Simulator Screenshot - iPhone 17 - 2026-08-30 at 16 29 36" src="https://github.com/user-attachments/assets/9b5ba8e4-bf41-472d-a488-221bf825e8b7" />
</p>

### Heritage & History

<p align="center">
  <img width="32%" alt="Heritage destinations" src="https://github.com/user-attachments/assets/596b2b17-febf-4a60-a9a7-200e00631745" />
  &nbsp;&nbsp;
  <img width="32%" alt="Heritage search" src="https://github.com/user-attachments/assets/aa402b60-2295-4c54-8b35-9927ec9ac998" />
</p>

### Camping & Nature

<p align="center">
  <img width="32%" alt="Camping destinations" src="https://github.com/user-attachments/assets/1c488588-4665-4825-af11-b279c5ba8b43" />
  &nbsp;&nbsp;
  <img width="32%" alt="Camping search" src="https://github.com/user-attachments/assets/17307feb-6772-46a9-8eb2-afb2ba5bc710" />
</p>

## Design Notes

- **Colors** — The app uses green and white, the colors of the Saudi flag. The green is the exact official shade `#006C35`, applied to the AppBar, buttons, and region labels.
- **Imagery** — Most destination photos are real locations in Saudi Arabia, chosen to reflect the actual look and feel of each place.

## Features

- **Home screen** with a welcome message and a scrollable list of activities
- **Explore button** on every activity card that navigates to its destinations
- **Cities screen** showing the top 3 destinations for each activity, with region and description
- **Live search** to filter destinations by name *(extra credit — TextField)*
- **Contact your guide** button with the guide's name for each activity
- Responsive image sizing using `MediaQuery`

## Screens

| Screen | Description |
|---|---|
| Home | AppBar, welcome header, `ListView` of activity cards, Explore button |
| Cities | AppBar with the activity name, search field, `ListView` of destination cards, contact button |

## Widgets Used

| Widget | Where |
|---|---|
| `AppBar` | Both screens |
| `ListView` | Home (activities) and Cities (destinations) |
| `Container` | Activity and destination cards |
| `Column` / `Row` | Card layouts |
| `SizedBox` | Spacing and full-width buttons |
| `Image` | Cover images for activities and destinations |
| `Text` | Titles, regions, descriptions |
| `MediaQuery` | Image height relative to screen width |
| `ElevatedButton` | Explore and Contact buttons |
| `Navigator` | Navigation from Home to Cities |
| `TextField` | Search filter *(extra credit)* |

## Data

All data is stored locally in `lib/data/events.dart` as a `List<Map>`:

```dart
List<Map<String, dynamic>> events = [
  {
    "name": "Diving",
    "image": "assets/images/diving/diving_cover.webp",
    "description": "...",
    "guide": "Faisal",
    "cities": [
      {"name": "Umluj", "city": "Tabuk", "image": "...", "description": "..."},
      ...
    ],
  },
  ...
];
```
