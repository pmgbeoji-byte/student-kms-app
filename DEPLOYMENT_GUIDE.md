# 🚀 DEPLOYMENT GUIDE - Student KMS App

## Quick Deploy to GitHub Pages (5 minutes)

### Step 1: Prepare Your Files

You already have the repository! Now add the HTML file:

```bash
# Navigate to your repository folder
cd /path/to/student-kms-app

# Copy or rename the HTML file to index.html
# (GitHub Pages looks for index.html by default)
cp student-kms-app.html index.html

# Verify the file exists
ls -la index.html
```

---

### Step 2: Push to GitHub

```bash
# Add the file to git
git add index.html

# Also add the README
git add README.md

# Commit with a descriptive message
git commit -m "Deploy Student KMS application - Initial release"

# Push to GitHub
git push origin main
```

---

### Step 3: Enable GitHub Pages

#### Option A: Via GitHub Website (Easiest)

1. Go to: https://github.com/pmgbeoji-byte/student-kms-app
2. Click **"Settings"** tab (top right)
3. Scroll down to **"Pages"** in the left sidebar
4. Under **"Source"**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **"Save"**
6. Wait 1-2 minutes for deployment
7. Your site will be live at:  
   `https://pmgbeoji-byte.github.io/student-kms-app/`

#### Option B: Via Command Line

```bash
# GitHub Pages is automatically enabled when you push index.html to main branch
# Just visit the repository settings to confirm
```

---

### Step 4: Verify Deployment

```bash
# Open your browser to:
# https://pmgbeoji-byte.github.io/student-kms-app/

# Or use curl to check if it's live:
curl -I https://pmgbeoji-byte.github.io/student-kms-app/
```

You should see: `HTTP/2 200` (success!)

---

## 🎯 What Your File Structure Should Look Like

```
student-kms-app/
├── index.html          ← Main app (renamed from student-kms-app.html)
├── README.md           ← Documentation
└── .git/               ← Git repository (already exists)
```

---

## 🔍 Troubleshooting

### Issue 1: 404 Error After Deployment

**Problem:** Site shows "404 - File not found"  
**Solution:** Make sure file is named `index.html` (not `student-kms-app.html`)

```bash
# Check current files
git ls-tree -r main --name-only

# If you see student-kms-app.html but not index.html:
git mv student-kms-app.html index.html
git commit -m "Rename to index.html for GitHub Pages"
git push origin main
```

---

### Issue 2: Changes Not Showing Up

**Problem:** Pushed changes but site still shows old version  
**Solution:** GitHub Pages caches content. Clear your browser cache or wait 5 minutes.

```bash
# Force refresh your browser:
# Chrome/Edge: Ctrl+Shift+R (Windows) or Cmd+Shift+R (Mac)
# Firefox: Ctrl+F5 (Windows) or Cmd+Shift+R (Mac)
```

---

### Issue 3: Site Not Building

**Problem:** GitHub Actions shows build failure  
**Solution:** Check GitHub Actions tab for errors

1. Go to: https://github.com/pmgbeoji-byte/student-kms-app/actions
2. Click on the latest workflow run
3. Check for error messages
4. Common fix: Ensure `index.html` is in root directory

---

## 📱 Sharing Your App

Once deployed, share with:

### For Professor/Classmates:
```
Live Demo: https://pmgbeoji-byte.github.io/student-kms-app/
Repository: https://github.com/pmgbeoji-byte/student-kms-app
```

### For Portfolio/LinkedIn:
```
🎓 Student KMS - Course Planning System
Built with HTML/CSS/JavaScript as part of Design Thinking coursework

Features:
✅ Accessibility-first design (ADHD support)
✅ Real-time conflict detection
✅ Mobile responsive
✅ User-tested with 3 personas

🔗 Live: https://pmgbeoji-byte.github.io/student-kms-app/
📂 Code: https://github.com/pmgbeoji-byte/student-kms-app
```

---

## 🎨 Optional: Add Custom Domain

Want `studentkms.com` instead of `github.io`?

### Steps:

1. **Buy domain** (from Namecheap, GoDaddy, etc.)
2. **Add DNS records:**
   ```
   Type: A
   Host: @
   Value: 185.199.108.153
   Value: 185.199.109.153
   Value: 185.199.110.153
   Value: 185.199.111.153

   Type: CNAME
   Host: www
   Value: pmgbeoji-byte.github.io
   ```

3. **In GitHub repo settings:**
   - Go to Settings → Pages
   - Under "Custom domain", enter: `studentkms.com`
   - Check "Enforce HTTPS"

4. **Wait 24-48 hours** for DNS propagation

---

## 🔄 Updating Your App

After making changes:

```bash
# Edit index.html locally
nano index.html  # or use any text editor

# Commit and push
git add index.html
git commit -m "Update: [describe your changes]"
git push origin main

# GitHub Pages auto-deploys in 1-2 minutes
```

---

## 📊 Track Your Visitors (Optional)

Add Google Analytics to see who visits:

1. Create Google Analytics account
2. Get tracking ID (looks like `G-XXXXXXXXXX`)
3. Add before `</head>` in `index.html`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## ✅ Deployment Checklist

Before submitting to professor:

- [ ] `index.html` exists in root directory
- [ ] README.md is complete and accurate
- [ ] GitHub Pages is enabled
- [ ] Site loads correctly (test on phone + desktop)
- [ ] All features work (add course, remove, conflicts)
- [ ] No console errors (press F12 in browser)
- [ ] Tested on multiple browsers (Chrome, Firefox, Safari)
- [ ] Screenshots taken for documentation
- [ ] Repository is public (for professor access)

---

## 🎓 Submitting to Professor

Create a submission document:

```markdown
# Student KMS - Submission

**Student:** Paterson Mgbeoji
**Course:** MENT 602: Design Thinking
**Date:** December 9, 2025

## Deliverables

1. **Live Application:**  
   https://pmgbeoji-byte.github.io/student-kms-app/

2. **Source Code:**  
   https://github.com/pmgbeoji-byte/student-kms-app

3. **Documentation:**
   - README.md (comprehensive overview)
   - User interview findings (PDF)
   - Test case documentation (PDF)
   - Wireframes (original designs)

## Test Instructions

Please test the following scenarios:

1. **Accessibility Test (ADHD):**
   - Add courses and observe progress indicator
   - Close and reopen browser (auto-save test)

2. **Usability Test (First-time user):**
   - Try adding "FIN 601" (prerequisite lock)
   - Add "CONS 601" + "NEG 602" (conflict detection)

3. **Error Handling Test:**
   - View course details with prerequisites
   - Add 6 courses (max limit warning)

## Key Features Implemented

✅ 5 complete screens (Landing, Dashboard, Discovery, Professors, Planner)
✅ Real-time search and filtering
✅ Prerequisite validation
✅ Schedule conflict detection
✅ Auto-save functionality
✅ Mobile responsive design
✅ Accessibility features (ADHD support)
✅ User-tested with comprehensive test cases

---

**Questions?** Email: [your-ucw-email@student.ucw.ca]
```

---

## 🚀 You're Ready!

Your deployment is complete when you can:

1. ✅ Visit `https://pmgbeoji-byte.github.io/student-kms-app/`
2. ✅ See your Student KMS app load
3. ✅ Add and remove courses
4. ✅ See conflicts and prerequisites working
5. ✅ Test on mobile device

**Estimated time to complete:** 5-10 minutes  
**Difficulty:** Easy ⭐

---

Need help? Check:
- [GitHub Pages Docs](https://docs.github.com/en/pages)
- [GitHub Issues](https://github.com/pmgbeoji-byte/student-kms-app/issues)
