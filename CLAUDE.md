# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a static portfolio website for frnki.dev - a personal portfolio showcasing systems programming expertise, VR development work, and 42Vienna computer science projects. The site is built with pure HTML, CSS, and JavaScript without any build tools or frameworks.

## Development Commands

**Local Development:**
```bash
# Serve the site locally (choose any):
python -m http.server 8000
python3 -m http.server 8000
npx http-server
# Access at http://localhost:8000
```

**Testing & Validation:**
- No tests, linting, or build process - this is pure static HTML/CSS/JS
- Validate HTML: Use W3C validator or browser developer tools
- Check responsiveness: Test across different viewport sizes
- Performance: Use browser DevTools Lighthouse

## Architecture

**Static HTML Structure:**
- `index.html` - Homepage with hero section, skills, stats, and featured projects
- `projects.html` - Projects showcase page with galleries and detailed descriptions
- `contact.html` - Enhanced contact page with collaboration details organized by Systems Programming, Algorithm & Data Structures, Web Development, and Consultation services

**Styling & Design:**
- Uses Tailwind CSS via CDN for styling
- Custom color scheme defined in Tailwind config:
  - `bg: '#282828'` - Background
  - `text: '#ffffff'` - Primary text
  - `sub: '#cccccc'` - Secondary text
  - `green: '#b8bb26'` - Accent color
  - `border: '#444444'` - Border color
- Inter font from Google Fonts
- Responsive design with mobile-first approach

**JavaScript Features:**
- Intersection Observer for fade-in animations on scroll
- Dynamic hero video rotation system with 31+ random MP4 backgrounds
- Gallery navigation with looping functionality
- Smooth scrolling behavior
- Hover effects and transitions
- Plausible Analytics integration

**Navigation:**
- Consistent navbar across all pages with logo and navigation links
- Active page highlighting in navigation
- Logo hover rotation effect

## Development Workflow

**No Build Process:**
This is a static site with no build tools, package managers, or dependencies. All files are served directly.

**Local Development:**
- Use any static file server (e.g., `python -m http.server 8000`)
- No compilation or bundling required
- Changes are immediately visible on refresh

**Deployment:**
- Direct upload/sync of HTML files to web server
- No build step required

## Content Structure

**SEO & Meta:**
- Complete Open Graph and Twitter Card meta tags on all pages
- Proper page titles and descriptions
- Favicon set with multiple formats

**Analytics:**
- Plausible Analytics with outbound link tracking
- Domain: `frnki.dev`

**Styling Patterns:**
- Consistent page structure with navbar, main content, and footer
- Fade-in animations using `.fade-target` class
- Card-based layouts for project showcases
- Hover effects with scale and color transitions

## File Organization

- Root level HTML files for each page
- All assets (favicon.ico, favicon.svg, favicon-96x96.png) in root
- Project images organized in `images/projects/` subdirectories
- Inline CSS and JavaScript in each HTML file

## Project Images

**Architecture VR:**
- `images/projects/architecture-vr/METRiK_00.png`
- `images/projects/architecture-vr/METRiK_01.png`

**Exposure Therapy VR:**
- `images/projects/therapy-vr/exposure_00.png`
- `images/projects/therapy-vr/exposure_01.png`

**Other Projects:**
- `images/projects/crypt.frnki/crypt_frnki.png`
- `images/projects/vid.frnki/vid.frnki.png`

## Hero Video System

The homepage features a dynamic background video system that randomly cycles through 31+ architectural animation MP4s from Google's Flow TV. Videos are loaded sequentially with smart logic to prevent repeats until all have been shown.

**Video URLs Pattern:**
```javascript
const videoUrls = [
  "https://storage.googleapis.com/gtv-videos-bucket/flowtv/flowtvVidSet004_006.mp4",
  // ... 31+ videos total
];
```

## Gallery System

Project galleries support:
- Image navigation with prev/next buttons
- Indicator dots for direct navigation
- Modal full-screen viewing
- Automatic looping (e.g., architecture: 2 images, therapy: 2 images)

## Project Details System

All projects feature expandable "Show Details" sections with:
- **crypt.frnki**: Security features, implementation details, and operational security
- **Architecture VR**: Key features and technical implementation
- **Exposure Therapy VR**: Therapeutic features and safety compliance
- **42Vienna Projects**: Core curriculum projects including minishell, philosophers, so_long, push_swap, etc.

## Skills & Expertise Representation

The portfolio accurately reflects comprehensive 42Vienna curriculum completion:
- **Systems Programming**: C/C++, process management, IPC, custom shells
- **Algorithm & Data Structures**: Optimization, concurrency, data structure implementation
- **Linux Security**: Server hardening, configuration, born2beroot project knowledge
- **Web Development**: Modern applications, responsive design, performance optimization
- **VR Development**: Unreal Engine 5, Meta Quest 3, immersive experiences

## Common Modifications

**Adding New Projects:**
1. Add project images to `images/projects/[project-name]/`
2. Update projects.html with new project card and gallery
3. Add expandable details section if needed

**Updating Skills/Stats:**
- Edit the skills grid in index.html
- Update the stats counters in the hero section

**Modifying Theme:**
- Update Tailwind config in each HTML file's `<script>` tag
- Color scheme uses gruvbox-inspired palette

## Important Implementation Details

**Fade-in Animation System:**
- Uses Intersection Observer API
- Elements with `.fade-target` class fade in on scroll
- Configured with 100px root margin and 0.1 threshold

**Gallery Modal:**
- Full-screen image viewing on click
- Keyboard navigation support (Escape to close)
- Touch-friendly for mobile devices

**Video Background Performance:**
- Muted autoplay for browser compatibility
- Lazy loading with sequential URL fetching
- Fallback to solid background on mobile/errors