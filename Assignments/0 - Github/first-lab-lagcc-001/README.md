# Assignment 02 – GitHub Workflow Dry‑Run 🌐
*Estimated time — 20‑30 minutes*

In real projects you’ll fix code on **your fork**, push, and open a **pull request (PR)**.  
This lab is a safe sandbox to practise that loop end‑to‑end.

---

## 🧩 Objectives
By the end you will be able to:

1. **Fork** a repository on GitHub.  
2. **Clone** your fork to your computer.  
3. Make a change (add a file).  
4. **Commit** and **push** that change back to *your* fork.  
5. Open a **pull request** so the original repo can review your work.

---

## 🔧 Prerequisites
* Git installed and configured  
* GitHub account added to our class org (check your email invite)  
* Terminal (macOS/Linux) or **Git Bash** (Windows)

---

## 🚦 Step‑by‑step

> **Screenshots count!** Grab a screenshot at each 🚀 emoji and store them in a folder called `screenshots/`.

### 1 . Fork 🚀
1. Visit the GitHub link given by your instructor.  
2. Click **Fork** → select *your* account.  
3. Confirm you’re now at `github.com/<you>/<repo‑name>`.

### 2 . Clone 🚀
```bash
git clone https://github.com/<your‑user>/<repo‑name>.git
cd <repo‑name>
```

### 3 . Add a file 🚀
```bash
# Bash
echo "My first lab ⭐" > hello-ironboard.txt
# PowerShell alternative:
# 'My first lab ⭐' > hello-ironboard.txt
```

### 4 . Stage & Commit 🚀
```bash
git add hello-ironboard.txt
git commit -m "Add hello-ironboard.txt for Assignment 02"
```

Check with `git status`.

### 5 . Push 🚀
```bash
git push -u origin main    # use master if that’s the default branch
```

### 6 . Open a Pull Request 🚀
1. Go to your fork on GitHub.  
2. Click **Compare & pull request**.  
3. Title: `Complete Assignment 02`  
4. Click **Create pull request**.

---

## 📝 Reflection
Create **REFLECTION.md** answering:

* Which step felt least clear?  
* Why do we fork instead of pushing directly to the instructors’ repo?

```bash
git add REFLECTION.md
git commit -m "Add reflection"
git push
```

---

## ✅ Check before you submit
- [ ] `hello-ironboard.txt` present  
- [ ] `screenshots/` with at least four images  
- [ ] `REFLECTION.md` added  
- [ ] PR shows green checks  

Paste your PR link in the LMS when done.

---

### 💡 Troubleshooting
| Problem | Fix |
|---------|-----|
| Auth errors | Ensure you accepted the org invite; use HTTPS. |
| On wrong branch name | `git branch -M main` then push again. |
| Forgot a file | Add → commit → push; the PR updates automatically. |

Happy Git‑ing! 🚀
