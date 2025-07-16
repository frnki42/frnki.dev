# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a static portfolio website for frnki.dev - a personal portfolio showcasing VR development work, Unreal Engine projects, and computer science studies. The site is built with pure HTML, CSS, and JavaScript without any build tools or frameworks.

## Architecture

**Static HTML Structure:**
- `index.html` - Homepage with hero section, skills, stats, and featured projects
- `projects.html` - Projects showcase page with galleries and detailed descriptions
- `contact.html` - Enhanced contact page with forms and collaboration details

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

## Gallery System

Project galleries support:
- Image navigation with prev/next buttons
- Indicator dots for direct navigation
- Modal full-screen viewing
- Automatic looping (e.g., architecture: 2 images, therapy: 2 images)