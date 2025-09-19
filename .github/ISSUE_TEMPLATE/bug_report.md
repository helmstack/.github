---
name: Bug Report
about: Report a bug to help us improve HelmStack
title: '[BUG] '
labels: 'bug, triage'
assignees: ''
---

## 🐛 Bug Description

**What happened?**
<!-- A clear and concise description of the bug -->

**What did you expect to happen?**
<!-- What you expected to happen instead -->

---

## 🔄 Steps to Reproduce

1. <!-- Step 1 -->
2. <!-- Step 2 -->
3. <!-- Step 3 -->
4. <!-- Error occurs -->

**Minimal reproduction case** (if applicable):
```bash
# Commands or code that reproduce the issue
heck command --flags
```

---

## 💻 Environment

**HelmStack Version**: <!-- Run `heck --version` -->

**Operating System**:
- [ ] Windows
- [ ] macOS
- [ ] Linux (which distribution?)

**Node.js Version**: <!-- Run `node --version` -->

**Project Type**:
- [ ] TypeScript
- [ ] JavaScript
- [ ] Python
- [ ] Go
- [ ] Other: ___

---

## 📋 Error Details

**Error Message**:
```
<!-- Copy the exact error message here -->
```

**Stack Trace** (if available):
```
<!-- Copy the stack trace here -->
```

**Log Output**:
```bash
# Run with --verbose flag if possible
heck command --verbose
```

---

## 📊 Impact

**Severity**: Critical / High / Medium / Low

**Frequency**: Always / Often / Sometimes / Rarely

**Workaround Available**: Yes / No
<!-- If yes, describe the workaround -->

---

## 🔍 Additional Context

**Screenshots** (if applicable):
<!-- Drag and drop screenshots here -->

**Related Configuration**:
```json
// .heckrc or relevant config
```

**Project Structure** (if relevant):
```
project/
├── src/
├── tests/
└── ...
```

---

## 🧪 Debugging Information

**Have you tried?**
- [ ] Clearing cache (`heck cache clear`)
- [ ] Reinstalling HelmStack
- [ ] Running with `--verbose` flag
- [ ] Checking `.heck/logs/` for detailed logs

**Related Issues**:
<!-- Link any similar issues -->
- Similar to #
- Possibly related to #