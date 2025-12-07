# GitHub Pages Deployment Guide

## Quick Deploy Steps

### Option 1: Using the Deploy Script (Recommended)

1. Open your terminal
2. Navigate to the dist folder:
   ```bash
   cd "/Users/maliksheharyaar/Documents/Mac Documents/Projects/Org_Chart/dist"
   ```

3. Make the script executable and run it:
   ```bash
   chmod +x deploy-pages.sh
   ./deploy-pages.sh
   ```

4. Follow the prompts to enter your GitHub repository URL

---

### Option 2: Manual Steps

1. **Create a new repository on GitHub**
   - Go to https://github.com/new
   - Name it (e.g., `orgcharts-deploy` or `orgcharts-app`)
   - Keep it public (required for free GitHub Pages)
   - Don't initialize with README, .gitignore, or license
   - Click "Create repository"

2. **Navigate to dist folder**
   ```bash
   cd "/Users/maliksheharyaar/Documents/Mac Documents/Projects/Org_Chart/dist"
   ```

3. **Initialize git in dist folder**
   ```bash
   git init
   ```

4. **Add all files**
   ```bash
   git add .
   ```

5. **Create initial commit**
   ```bash
   git commit -m "Deploy: OrgChart Builder to GitHub Pages"
   ```

6. **Add remote** (replace with your actual repo URL)
   ```bash
   git remote add origin https://github.com/maliksheharyaar/orgcharts-deploy.git
   ```

7. **Set branch to main**
   ```bash
   git branch -M main
   ```

8. **Push to GitHub**
   ```bash
   git push -u origin main
   ```

---

## Enable GitHub Pages

After pushing your code:

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll to **Pages** section (left sidebar)
4. Under "Build and deployment":
   - Source: Select **Deploy from a branch**
   - Branch: Select **main** and **/ (root)**
   - Click **Save**
5. Wait a few minutes for deployment
6. Your site will be available at:
   ```
   https://maliksheharyaar.github.io/[repository-name]/
   ```

---

## Future Updates

When you make changes and rebuild:

1. Rebuild the project from the main folder:
   ```bash
   cd "/Users/maliksheharyaar/Documents/Mac Documents/Projects/Org_Chart"
   npm run build
   ```

2. Navigate to dist and push updates:
   ```bash
   cd dist
   git add .
   git commit -m "Update: [describe your changes]"
   git push
   ```

3. GitHub Pages will automatically update in a few minutes

---

## Troubleshooting

**Issue**: Blank page or 404 errors
- **Solution**: Check if the `index.html` is in the root of the dist folder
- Make sure GitHub Pages is set to deploy from `main` branch, `/` (root)

**Issue**: Assets not loading (CSS/JS 404)
- **Solution**: Check the `base` setting in `vite.config.ts`
- For GitHub Pages, you may need to set: `base: '/repository-name/'`

**Issue**: Push rejected
- **Solution**: The repository might not be empty. Use `git push -f origin main` (be careful, this force pushes)

---

## Notes

- This is a separate repository from your main source code
- The main source code is in: https://github.com/maliksheharyaar/orgcharts
- This deployment repository only contains built files
- Always rebuild before pushing updates
