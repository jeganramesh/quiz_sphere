# Quiz Sphere

Perfect Jegan 👍 Here’s a **clean README section** you can paste into your `README.md` to document how you pushed your Flutter app to GitHub and worked with branches.

---

# 📌 GitHub Workflow – Quiz Sphere App

This project uses Git for version control and GitHub for remote repository hosting. Below are the steps followed to connect the local Flutter app to GitHub and manage branches.

---

## 🚀 Setup Remote Repository

1. Initialize Git in project folder:

   ```bash
   git init
   ```

2. Add GitHub repository as remote:

   ```bash
   git remote add origin https://github.com/<username>/quiz_sphere.git
   ```

3. Verify remote:

   ```bash
   git remote -v
   ```

---

## 🌿 Working with Branches

### Create and Switch to a New Branch

```bash
git checkout -b quiz-sphere-1.0.1
```

### Check Current Branch

```bash
git branch
```

### Commit Changes

```bash
git add .
git commit -m "Initial commit for quiz-sphere-1.0.1 branch"
```

### Push Branch to GitHub

```bash
git push -u origin quiz-sphere-1.0.1
```

---

## 🔄 Updating Main Branch

If your remote `main` branch has updates, pull them first:

```bash
git pull origin main --rebase
```

Push your local `main` to GitHub:

```bash
git push origin main
```

---

## ⚠️ Force Push (Use Carefully)

If you need to overwrite the remote branch:

```bash
git push origin main --force
```

⚠️ This deletes remote changes. Only use when sure.

---

✅ With this workflow, you can safely manage multiple versions (`quiz-sphere-1.0.1`, `quiz_ui`, etc.) while keeping `main` stable.

---

👉 Do you want me to also add a **section on merging branches into main** (via GitHub Pull Request or command line) in the README?


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
