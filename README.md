# Unix Epoch Time Display
 
A Discourse theme component written by Anthropic Claude that displays the current Unix epoch time in seconds directly below the site header navigation bar.

## Features

- **Real-time updates**: The Unix timestamp updates every second
- **Large, prominent display**: 42px monospace font for easy visibility
- **Transparent background**: Blends seamlessly with your site's header
- **Customizable colors**: Configure text and label colors via theme settings
- **Optional label**: Show or hide the "unix time:" label prefix
- **Responsive**: Works on both desktop and mobile views

## Installation

### Via GitHub Repository

1. Go to your Discourse admin panel
2. Navigate to **Admin** → **Customize** → **Themes**
3. Click **Install** → **From a git repository**
4. Enter the repository URL
5. Click **Install**

### Manual Installation

1. Clone or download this repository
2. Go to **Admin** → **Customize** → **Themes**
3. Click **Install** → **From your device**
4. Upload the theme component folder as a `.tar.gz` archive

## Settings

| Setting | Type | Default | Description |
|---------|------|---------|-------------|
| `background_color` | Color | `transparent` | Background color of the Unix time banner |
| `text_color` | Color | `#08c` | Color of the Unix timestamp digits |
| `label_color` | Color | `#aaaaaa` | Color of the "unix time:" label |
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
