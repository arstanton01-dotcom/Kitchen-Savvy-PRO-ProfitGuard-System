# Sheet Architecture Rules

## Branding and Layout
- **Top Wall (Rows 1–3):** Reserved for brand identity. Must remain consistent across all tabs.
- **Row 4:** Fixed-height spacer (20–25px) for breathing room.
- **Column A:** 100px width to provide professional left alignment.
- **Gridlines:** Hidden (`SetHiddenGridlines(true)`) for a clean, web-app look.

## Typography & Colors
- **Row 1 (Brand Title):** 16pt, Bold, Navy (#001F5F)
- **Row 2 (System Subtitle):** 10pt, Normal, Navy (#001F5F)
- **Row 3 (Tab Identifier):** 11pt, Bold, Navy text on Gold (#FFD700) strip
- **Table Headers (Rows 9/10):** 10pt, Bold, White text on Navy
- **General Data:** 10pt, Normal, Sans-Serif
- **Input Fields:** Light Gray (#E8EAED)
- **Calculated/Protected Fields:** White (#FFFFFF)

## Tab Configuration
| Tab Name          | Header Row | Data Start Row | Notes |
|------------------|------------|----------------|-------|
| Instructions      | N/A        | N/A            | SOPs and guidance |
| Homepage          | N/A        | N/A            | Dashboard summary |
| Leakage Detector  | 9          | 10             | Vendor invoice & variance tracking |
| Credit Tracker    | 10         | 11             | Recovery and credit aging |

## Units of Measure (UOM)
- Standardize vendor sizes: CASE, FLAT, TUB, JIB

## Input vs Calculated Fields
- **Input cells:** light gray background (#E8EAED)
- **Calculated/Protected cells:** white background (#FFFFFF)
- **Validation:** Vendor Name + Item Name required before row can be pushed to tracker

