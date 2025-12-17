# Lumen

### A theme for deep work, lit by natural warmth.

Lumen is built for long, focused creative sessions. Green as earth, amber as light, ivory as breath.

It emphasizes calm, muted tones, clean whitespace, and sharp corners over roundness to maintain clarity without visual noise. The color palette is gentle yet expressive, aiming to reduce eye strain over 20+ hour work sessions.

---

## Core Background Colors

![Background Colors](palettes/backgrounds.png)

| Element                  | HEX       | RGB (0–255)  | Description      |
| ------------------------ | --------- | ------------ | ---------------- |
| **Background Primary**   | `#252E25` | `37, 46, 37` | Main surface     |
| **Background Secondary** | `#2B362B` | `43, 54, 43` | Panels, sidebars |
| **Background Tertiary**  | `#1E261E` | `30, 38, 30` | Depth layers     |
| **Background Active**    | `#37483A` | `55, 72, 58` | Selected state   |
| **Background Inactive**  | `#1A211A` | `26, 33, 26` | Dimmed state     |

## Core Text Colors

![Text Colors](palettes/text.png)

| Element            | HEX       | RGB (0–255)     | Description      |
| ------------------ | --------- | --------------- | ---------------- |
| **Text Primary**   | `#EAE6D5` | `234, 230, 213` | Main text        |
| **Text Secondary** | `#C0BCA5` | `192, 188, 165` | Labels, metadata |
| **Text Muted**     | `#8A9A88` | `138, 154, 136` | Comments, hints  |

## UI Elements

![UI Element Colors](palettes/ui_elements.png)

| Element       | HEX       | RGB (0–255)   | Description       |
| ------------- | --------- | ------------- | ----------------- |
| **Border**    | `#2C3A2C` | `44, 58, 44`  | Separators        |
| **Selection** | `#4A5A49` | `74, 90, 73`  | Highlights        |
| **Scrollbar** | `#5C6B5A` | `92, 107, 90` | Scroll indicators |

## Semantic Colors

**Two variants: Soft (blends with theme) and Strong (high visibility)**

![Semantic Colors (Soft)](palettes/colors_soft.png)
![Semantic Colors (Strong)](palettes/colors_strong.png)

| Color                             | Soft (HEX) | Soft (RGB, 0-255) | Strong (HEX) | Strong (RGB, 0-255) |
| --------------------------------- | ---------- | ----------------- | ------------ | ------------------- |
| **Red**                           | `#E3947D`  | `227, 148, 125`   | `#F1735D`    | `241, 115, 93`      |
| **Orange (Soft is Accent color)** | `#E7B77A`  | `231, 183, 122`   | `#F5B53C`    | `245, 181, 60`      |
| **Yellow**                        | `#ECD2A5`  | `236, 210, 165`   | `#FFD67C`    | `255, 214, 124`     |
| **Green**                         | `#A3C9A9`  | `163, 201, 169`   | `#78A67E`    | `120, 166, 126`     |
| **Cyan**                          | `#A2D1CC`  | `162, 209, 204`   | `#5FB8B0`    | `95, 184, 176`      |
| **Blue**                          | `#AAC0C9`  | `170, 192, 201`   | `#6B9AB8`    | `107, 154, 184`     |
| **Purple**                        | `#C2B2D1`  | `194, 178, 209`   | `#9B7BB8`    | `155, 123, 184`     |
| **Magenta**                       | `#D4A8B8`  | `212, 168, 184`   | `#C97A9A`    | `201, 122, 154`     |

## Syntax / Code Colors

![Syntax Code Colors](palettes/syntax_code.png)

| Token         | HEX              | RGB (0–255)     | Description                                    |
| ------------- | ---------------- | --------------- | ---------------------------------------------- |
| **Keyword**   | `#E0D0A0`        | `224, 208, 160` | **Custom ochre** — distinct from all semantics |
| **Function**  | `#C3D9B7`        | `195, 217, 183` | **Custom sage-green** — organic, calm          |
| **String**    | `#ECD2A5`        | `236, 210, 165` | Warm data literal                              |
| **Number**    | `#DAB77F`        | `218, 183, 127` | **Custom muted gold** — numeric distinction    |
| **Type**      | `#D8CFB0`        | `216, 207, 176` | **Custom creamy beige** — structural           |
| **Constant**  | `#E7B77A`        | `231, 183, 122` | Signature accent                               |
| **Parameter** | `#CBC0A8`        | `203, 192, 168` | **Custom neutral tan** — supporting role       |
| **Operator**  | `#ABB59E`        | `171, 181, 158` | **Custom gray-green** — quiet structure        |
| **Bracket**   | Same as Operator | -               | -                                              |
| **Comment**   | `#8A9A88`        | `138, 154, 136` | Fades into background                          |

**Note:** Syntax needs 6 custom colors (ochre, sage-green, gold, beige, tan, gray-green) because code hierarchy requires more nuance than semantic states.

## State Colors

![State Colors](palettes/states.png)

| State       | Color            |
| ----------- | ---------------- |
| **Error**   | Red (Strong)     |
| **Warning** | Yellow (Soft)    |
| **Info**    | Cyan (Soft)      |
| **Success** | Green (Soft)     |
| **Hint**    | Text (Secondary) |

## Git / Version Control

![Git Colors](palettes/git.png)

| Action       | Colors        |
| ------------ | ------------- |
| **Added**    | Green (Soft)  |
| **Modified** | Orange (Soft) |
| **Deleted**  | Red (Soft)    |

## Focus & Attention

![Focus & Attention Colors](palettes/focus_attention.png)

| Element                | Color         |
| ---------------------- | ------------- |
| **Accent / Important** | Orange (Soft) |
| **Cursor**             | Orange (Soft) |
| **Search Highlight**   | Selection     |
| **Visual Select**      | Active        |

> **Philosophy:**
> Use semantic colors (Red, Orange, Yellow, etc.) wherever possible. Syntax gets custom tones because code needs precise hierarchy. Everything else maps to the main palette.

---

## Typography

**IBM Plex**

* **Mono** for development tools (Neovim, terminals)
* **Sans** for interfaces and notes

Its geometry pairs perfectly with the organic calm of this palette — clarity meets warmth.

---

## Supported Applications

* **Alacritty**
* **Neovim**
* **Godot 4.x**
* **KDE Plasma (Partially)**
* **Krita**

## Godot 4.x Setup

1. Open **Editor → Editor Settings**
2. Navigate to **Interface → Theme**
3. Update to these values:

   * **Base Color:** `#252E25`
   * **Accent Color:** `#E7B77A`
   * **Contrast:** `0.3`

---

## Theme Development Roadmap

* [x] Create Nvim Theme
* [ ] Create full KDE Theme
* [ ] Create OBS Theme
* [ ] Updated Krita Theme
* [ ] Add wallpapers & accent assets

---

## License

MIT

### A theme for deep work, lit by natural warmth.

---

If you want, the next step could be updating **the KDE / Dolphin colors** to match this softer palette, so all apps gradually feel cohesive without being too jarring.

Do you want me to do that next?
