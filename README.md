# Lumen
### A theme for deep work, lit by natural warmth.

Lumen is built for long, focused creative sessions. Green as earth, amber as light, ivory as breath.
  
It emphasizes calm, muted tones, clean whitespace, and sharp corners over roundness to maintain clarity without visual noise. The color palette is gentle yet expressive, aiming to reduce eye strain over 20+ hour work sessions.

---

## Core Background Colors
![Background Colors](palettes/backgrounds.png)
| Element                  | HEX       | RGB (0–255)  | Description      |
|--------------------------|-----------|--------------|------------------|
| **Background Primary**   | `#1B241B` | `27, 36, 27` | Main surface     |
| **Background Secondary** | `#202C21` | `32, 44, 33` | Panels, sidebars |
| **Background Tertiary**  | `#161E16` | `22, 30, 22` | Depth layers     |
| **Background Active**    | `#2A3729` | `42, 55, 41` | Selected state   |
| **Background Inactive**  | `#121A12` | `18, 26, 18` | Dimmed state     |

## Core Text Colors
![Text Colors](palettes/text.png)
| Element            | HEX       | RGB (0–255)     | Description      |
|--------------------|-----------|-----------------|------------------|
| **Text Primary**   | `#E8E3D1` | `232, 227, 209` | Main text        |
| **Text Secondary** | `#B9B39E` | `185, 179, 158` | Labels, metadata |
| **Text Muted**     | `#6C7C6E` | `108, 124, 110` | Comments, hints  |

## UI Elements
![UI Element Colors](palettes/ui_elements.png)
| Element       | HEX       | RGB (0–255)  | Description       |
|---------------|-----------|--------------|-------------------|
| **Border**    | `#1E281F` | `30, 40, 31` | Separators        |
| **Selection** | `#334333` | `51, 67, 51` | Highlights        |
| **Scrollbar** | `#465845` | `70, 88, 69` | Scroll indicators |

## Semantic Colors
**Two variants: Soft (blends with theme) and Strong (high visibility)**

![Semantic Colors (Soft)](palettes/colors_soft.png)
![Semantic Colors (Strong)](palettes/colors_strong.png)

| Color                             | Soft (HEX) | Soft (RGB, 0-255) | Strong (HEX) | Strong (RGB, 0-255) |
|-----------------------------------|------------|-------------------|--------------|---------------------|
| **Red**                           | `#E17860`  | `225, 120, 96`    | `#F05C45`    | `240, 92, 69`       |
| **Orange (Soft is Accent color)** | `#E4B463`  | `228, 180, 99`    | `#F5B53C`    | `245, 181, 60`      |
| **Yellow**                        | `#E5C287`  | `229, 194, 135`   | `#FFD67C`    | `255, 214, 124`     |
| **Green**                         | `#98C5A0`  | `152, 197, 160`   | `#78A67E`    | `120, 166, 126`     |
| **Cyan**                          | `#9BC9C3`  | `155, 201, 195`   | `#5FB8B0`    | `95, 184, 176`      |
| **Blue**                          | `#9AAFB8`  | `154, 175, 184`   | `#6B9AB8`    | `107, 154, 184`     |
| **Purple**                        | `#B8A8C9`  | `184, 168, 201`   | `#9B7BB8`    | `155, 123, 184`     |
| **Magenta**                       | `#D4A8B8`  | `212, 168, 184`   | `#C97A9A`    | `201, 122, 154`     |

## Syntax / Code Colors
![Syntax Code Colors](palettes/syntax_code.png)
| Token         | HEX              | RGB (0–255)     | Description                                    |
|---------------|------------------|-----------------|------------------------------------------------|
| **Keyword**   | `#D8C58E`        | `216, 197, 142` | **Custom ochre** — distinct from all semantics |
| **Function**  | `#BFD5AF`        | `191, 213, 175` | **Custom sage-green** — organic, calm          |
| **String**    | Yellow (Soft)    | -               | Warm data literal                              |
| **Number**    | `#D8B06A`        | `216, 176, 106` | **Custom muted gold** — numeric distinction    |
| **Type**      | `#D4C99B`        | `212, 201, 155` | **Custom creamy beige** — structural           |
| **Constant**  | Orange (Soft)    | -               | Signature accent                               |
| **Parameter** | `#C8BBA2`        | `200, 187, 162` | **Custom neutral tan** — supporting role       |
| **Operator**  | `#A6AF96`        | `166, 175, 150` | **Custom gray-green** — quiet structure        |
| **Bracket**   | Same as Operator | -               | -                                              |
| **Comment**   | Text (Muted)     | -               | Fades into background                          |

**Note:** Syntax needs 6 custom colors (ochre, sage-green, gold, beige, tan, gray-green) because code hierarchy requires more nuance than semantic states.

## State Colors
![State Colors](palettes/states.png)
| State       | Color            |
|-------------|------------------|
| **Error**   | Red (Strong)     |
| **Warning** | Yellow (Soft)    |
| **Info**    | Cyan (Soft)      |
| **Success** | Green (Soft)     |
| **Hint**    | Text (Secondary) |

## Git / Version Control
![Git Colors](palettes/git.png)
| Action       | Colors        |
|--------------|---------------|
| **Added**    | Green (Soft)  |
| **Modified** | Orange (Soft) |
| **Deleted**  | Red (Soft)    |

## Focus & Attention
![Focus & Attention Colors](palettes/focus_attention.png)
| Element                | Color         |
|------------------------|---------------|
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
* **Obsidian**
* **KDE Plasma (Partially)**
* **Krita**

## Godot 4.x Setup
1. Open **Editor → Editor Settings**
2. Navigate to **Interface → Theme**
3. Update to these values:
   * **Base Color:** `#121A14`
   * **Accent Color:** `#E5A94D`
   * **Contrast:** `0.2`

---

## Theme Development Roadmap
* [x] Move away from the purple base from AMBER
* [x] Create Nvim Theme
* [x] Create Obsidian Theme
* [ ] Create KDE Theme
* [ ] Create OBS Theme
* [x] Create Krita Theme
* [ ] Add wallpapers & accent assets

---

## License
MIT

### A theme for deep work, lit by natural warmth.
