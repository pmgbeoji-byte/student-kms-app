# Student KMS - Course Planning System

[![Live Demo](https://img.shields.io/badge/demo-live-success)](https://pmgbeoji-byte.github.io/student-kms-app/)
[![GitHub](https://img.shields.io/badge/github-repository-blue)](https://github.com/pmgbeoji-byte/student-kms-app)

A modern, interactive course planning system designed for MBA students at University Canada West. Built as part of MENT 602: Design Thinking course with comprehensive accessibility and usability testing.

![Student KMS Preview](https://via.placeholder.com/1200x600/6B1010/F5F1E8?text=Student+KMS+Course+Planner)

---

## 🎯 Project Overview

**Student KMS** (Knowledge Management System) is a user-centered course planning application that helps students:
- Browse and discover courses with intelligent filtering
- View detailed course information including ratings, schedules, and prerequisites
- Plan their semester with conflict detection
- Track progress toward degree completion

**Developed by:** Paterson Mgbeoji  
**Institution:** University Canada West  
**Course:** MENT 602: Design Thinking (HBD-FALL25-01)  
**Instructor:** Arya Babaei

---

## ✨ Key Features

### 🔍 **Course Discovery**
- Real-time search by course code, title, or professor
- Advanced filters (department, level, days, time)
- Course cards with ratings, workload, and prerequisites
- Quick add/remove functionality

### 📋 **Smart Planner**
- Visual progress tracking (courses & credits)
- Automatic conflict detection
- Schedule overlap warnings
- Export and calendar integration

### ♿ **Accessibility First**
- **ADHD-friendly:** Minimal distractions, progress indicators, auto-save
- **First-time user:** Prerequisite prevention, clear guidance, mobile-optimized
- **Error handling:** Consistent visual system, clear recovery paths

### 🎨 **Professional Design**
- UCW brand colors (dark red #6B1010, cream #F5F1E8)
- Responsive layout (desktop, tablet, mobile)
- Smooth animations and transitions
- Consistent visual hierarchy

---

## 🚀 Live Demo

**Visit:** [https://pmgbeoji-byte.github.io/student-kms-app/](https://pmgbeoji-byte.github.io/student-kms-app/)

### Quick Test Scenarios:

1. **Test Accessibility (ADHD):**
   - Notice clean interface with minimal distractions
   - Add courses and see persistent progress indicator
   - Close browser and reopen - your selections are auto-saved

2. **Test Usability (First-Time User):**
   - Try adding "FIN 601" - see prerequisite lock 🔒
   - Add "CONS 601" then try "NEG 602" - conflict warning ⚠️
   - View toast notifications guiding you

3. **Test Error Handling:**
   - Open course details - see prerequisite warnings
   - Add conflicting courses - see detailed conflict explanation
   - Try adding 6th course - max limit error message

---

## 📦 Deployment Instructions

### Option 1: GitHub Pages (Current Setup)

Your app is already set up! To deploy:

```bash
# 1. Clone the repository
git clone https://github.com/pmgbeoji-byte/student-kms-app.git
cd student-kms-app

# 2. Add the HTML file as index.html
cp student-kms-app.html index.html

# 3. Push to GitHub
git add index.html
git commit -m "Deploy Student KMS app"
git push origin main

# 4. Enable GitHub Pages
# Go to: Settings → Pages → Source: Deploy from branch (main)
```

**Your live URL will be:**  
`https://pmgbeoji-byte.github.io/student-kms-app/`

### Option 2: Netlify (30-Second Deploy)

1. Go to [app.netlify.com/drop](https://app.netlify.com/drop)
2. Drag `student-kms-app.html` into browser
3. Instantly live at `https://[random-name].netlify.app`
4. Optional: Claim site to customize name

### Option 3: Vercel

```bash
# Install Vercel CLI
npm install -g vercel

# Deploy
cd student-kms-app
vercel
```

---

## 🧪 Test Cases Documentation

This application was built with three comprehensive test cases:

### **Test Case 1: Accessibility (Cognitive - ADHD)**
**Persona:** Tyler Martinez, 21, Marketing student with ADHD

**Features Tested:**
- ✅ Minimal distractions on landing page
- ✅ Information chunking (digestible course cards)
- ✅ Progress indicators (external memory aid)
- ✅ Auto-save functionality (no manual saves needed)
- ✅ Interrupt recovery ("Welcome back" feature)
- ✅ Clear next steps at all decision points

**Cognitive Load:** Low to Medium ✓

---

### **Test Case 2: Usability (First-Time User)**
**Persona:** Emily Rodriguez, 18, First-term CS student

**Features Tested:**
- ✅ Beginner-friendly language ("What You'll Learn")
- ✅ Prerequisite prevention (disabled buttons with explanations)
- ✅ Conflict detection (before adding courses)
- ✅ Mobile optimization (responsive layout)
- ✅ Toast notifications (instant feedback)
- ✅ Floating action button (quick planner access)

**Success Metric:** Complete task in <10 minutes, 0 errors ✓

---

### **Test Case 3: Error Handling & Visual Identifiers**
**Persona:** David Kim, 25, Part-time evening student

**Features Tested:**
- ✅ Consistent visual system (Green/Blue/Yellow/Red)
- ✅ Clear error messages with recovery steps
- ✅ Conflict warnings with side-by-side comparison
- ✅ Empty states with helpful guidance
- ✅ Form validation with inline feedback
- ✅ Session timeout handling

**Result:** Clear recovery paths for all scenarios ✓

---

## 📊 User Interview Findings

**Participant:** John Chen, 27, Third-term MBA student  
**Date:** December 3, 2025

### Positive Feedback ✅
- Visual hierarchy makes information scannable
- Filtering system is intuitive
- Three-tab course profile is perfect
- Visual indicators (stars, buttons) help navigation

### Areas for Improvement ⚠️
- Information overload (too many courses on screen)
- Missing prerequisite alerts *(Now implemented!)*
- Mobile experience unclear *(Now responsive!)*
- No comparison feature *(Planned for v2)*
- Unclear auto-save *(Now auto-saves to localStorage!)*

**Overall Rating:** 8/10  
**Quote:** *"This is way better than what we use now. I'd definitely use this."*

---

## 🛠️ Technical Stack

- **HTML5** - Semantic markup
- **CSS3** - Custom properties, Grid, Flexbox
- **JavaScript (Vanilla)** - No frameworks, lightweight
- **LocalStorage API** - Client-side persistence
- **Responsive Design** - Mobile-first approach

**Total File Size:** 64KB (single file, no dependencies)

---

## 📁 Project Structure

```
student-kms-app/
├── index.html                           # Main application (rename from student-kms-app.html)
├── README.md                            # This file
├── docs/
│   ├── User_Interview_Feedback.pdf     # Interview findings
│   ├── Test_Cases.pdf                  # Comprehensive test documentation
│   └── Wireframes.png                  # Original design wireframes
└── screenshots/
    ├── landing.png
    ├── dashboard.png
    ├── discovery.png
    ├── planner.png
    └── modal.png
```

---

## 🎨 Design System

### Colors
```css
--dark-red: #6B1010;        /* Primary brand color */
--medium-red: #8B2020;      /* Hover states */
--cream: #F5F1E8;           /* Background */
--dark-cream: #E8E0D0;      /* Borders, secondary */
--text-dark: #2C1810;       /* Body text */

/* Accents */
--green-accent: #9FD896;    /* Success, selections */
--purple-accent: #B896D8;   /* Course categories */
--blue-accent: #96C8D8;     /* Info states */
--warning-yellow: #F5C842;  /* Cautions */
--error-red: #D84F4F;       /* Errors, conflicts */
--success-green: #4CAF50;   /* Confirmations */
```

### Typography
- **Headers:** System fonts (-apple-system, Segoe UI, Roboto)
- **Body:** 14-16px, line-height 1.6
- **Hierarchy:** 48px → 24px → 18px → 14px → 12px

### Spacing
- **Base Unit:** 4px
- **Standard gaps:** 12px, 16px, 20px, 24px
- **Card padding:** 20-24px

---

## 🔧 Local Development

```bash
# Clone the repository
git clone https://github.com/pmgbeoji-byte/student-kms-app.git
cd student-kms-app

# Rename the HTML file
cp student-kms-app.html index.html

# Open in browser
open index.html
# OR start a local server
python3 -m http.server 8000
# Then visit: http://localhost:8000
```

---

## 📸 Screenshots

### Landing Screen
The entry point with course vs. professor lookup options.

### Dashboard
Analytics, reminders, and recently viewed courses at a glance.

### Course Discovery
Browse 47 MBA courses with advanced filtering and search.

### Course Details Modal
Three-tab interface: Overview, Reviews, Schedule with conflict detection.

### My Planner
Visual progress tracking with automatic conflict warnings.

---

## 🎓 Academic Context

This project demonstrates practical application of **Design Thinking** principles:

1. **Empathize:** User interview with John Chen identified real pain points
2. **Define:** 3 personas (Tyler/ADHD, Emily/First-time, David/Skeptical)
3. **Ideate:** Solutions for accessibility, usability, error handling
4. **Prototype:** Interactive web application with all features
5. **Test:** Comprehensive test cases with pass/fail criteria

### Learning Outcomes Achieved:
✅ User-centered design methodology  
✅ Accessibility compliance (WCAG principles)  
✅ Responsive web design  
✅ Usability testing documentation  
✅ Iterative prototyping

---

## 🚧 Future Enhancements (Roadmap)

### Phase 2
- [ ] Course comparison feature (side-by-side)
- [ ] Advanced search filters (rating, workload)
- [ ] PDF export with custom templates
- [ ] Google Calendar integration API
- [ ] Dark mode support

### Phase 3
- [ ] User authentication (student accounts)
- [ ] Real-time seat availability
- [ ] Waitlist management
- [ ] Peer reviews and ratings
- [ ] Degree audit integration

### Phase 4
- [ ] AI-powered course recommendations
- [ ] Schedule optimization algorithm
- [ ] Social features (study groups)
- [ ] Mobile apps (iOS/Android)

---

## 📝 License

This project was created for academic purposes as part of MENT 602: Design Thinking at University Canada West.

**Educational Use:** Free to use for learning and educational purposes  
**Commercial Use:** Requires permission from author

---

## 👨‍💻 Author

**Paterson Mgbeoji**  
MBA Student, University Canada West

📧 Email: [Your UCW Email]  
🔗 LinkedIn: [Your LinkedIn]  
🐙 GitHub: [@pmgbeoji-byte](https://github.com/pmgbeoji-byte)

---

## 🙏 Acknowledgments

- **Professor Arya Babaei** - Course instructor and mentor
- **John Chen** - User interview participant
- **University Canada West** - MBA Program support
- **Design Thinking Community** - Inspiration and best practices

---

## 📚 References

- Nielsen, J. (2020). *10 Usability Heuristics for User Interface Design*
- WCAG 2.1 Guidelines - Web Accessibility Standards
- Brown, T. (2008). *Design Thinking*, Harvard Business Review
- Cooper, A. (2014). *About Face: The Essentials of Interaction Design*

---

## 🐛 Known Issues

- [ ] Search filter persistence (resets on page reload)
- [ ] Conflict detection doesn't account for different course sections
- [ ] Mobile hamburger menu for filters (currently shows all filters)

**Report bugs:** [Open an issue](https://github.com/pmgbeoji-byte/student-kms-app/issues)

---

## ⭐ Star This Repo

If you found this project helpful for your own design thinking or web development learning, please consider giving it a star!

[![GitHub stars](https://img.shields.io/github/stars/pmgbeoji-byte/student-kms-app?style=social)](https://github.com/pmgbeoji-byte/student-kms-app)

---

**Last Updated:** December 9, 2025  
**Version:** 1.0.0  
**Status:** ✅ Production Ready
