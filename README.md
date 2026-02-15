# Unix Epoch Time Display

A Discourse theme component that displays the current Unix epoch time in seconds directly below the site header navigation bar.

## Features

- **Real-time updates**: The Unix timestamp updates every second
- **Large, prominent display**: 42px monospace font for easy visibility
- **Transparent background**: Blends seamlessly with your site's header
- **Customizable colors**: Configure text and label colors via theme settings
- **Adjustable font size**: Scale the display to your preference
- **Optional label**: Show or hide the "unix time:" label prefix
- **Responsive**: Automatically scales down for mobile devices

## Installation

1. Go to your Discourse admin panel
2. Navigate to **Admin** → **Customize** → **Themes**
3. Click **Install** → **From a git repository**
4. Enter: `https://github.com/unixneo/unix-epoch-time-display`
5. Click **Install**

## Settings

| Setting | Type | Default | Description |
|---------|------|---------|-------------|
| `background_color` | Color | `transparent` | Background color of the Unix time banner |
| `text_color` | Color | `#08c` | Color of the Unix timestamp digits |
| `label_color` | Color | `#aaaaaa` | Color of the "unix time:" label |
| `font_size` | String | `42px` | Font size of the Unix time display (e.g., 42px, 2.5rem) |
| `show_label` | Boolean | `true` | Show/hide the "unix time:" label |

## Usage

Once installed and enabled, the Unix epoch time will automatically appear below your site's header navigation bar. The display updates every second to show the current time.

### What is Unix Epoch Time?

Unix epoch time (also known as POSIX time or Unix timestamp) is the number of seconds that have elapsed since January 1, 1970 at 00:00:00 UTC. It's a widely used standard for representing time in computing systems.

## File Structure

```
unix-epoch-time-display/
├── about.json                    # Theme component metadata
├── common/
│   └── common.scss              # Styles (desktop + mobile)
├── javascripts/
│   └── discourse/
│       └── connectors/
│           └── below-site-header/
│               └── unix-epoch-time.gjs  # Glimmer component
├── locales/
│   └── en.yml                   # English translations
├── settings.yml                 # Theme settings
└── README.md                    # This file
```

## Compatibility

- **Minimum Discourse Version**: 2.7.0
- Uses modern Glimmer components with `.gjs` syntax

## License

MIT License - Feel free to use and modify as needed.
