---
date: 2024-09-24
authors:
    - lasseheia
categories:
    - Git
---

# Git Commit Verbose Mode

To help you remember exactly which changes are staged before writing a commit message, you can use the `git commit --verbose` command. This will display the diff of the changes you're about to commit in the editor where you write your commit message.

<!-- more -->

## How to Use Git Commit Verbose Mode

```zsh
git commit --verbose
```

## Set Git Commit Verbose Mode as the Default

You can set verbose mode as the default by running the following command:

```zsh
git config --global commit.verbose true
```

Or, if you're using Home Manager:

```nix
{
  programs.git = {
    enable = true;
    extraConfig = {
      commit.verbose = true;
    };
  };
}
```

## How to Override the Default

If you want to override the default and skip verbose mode for a single commit, you can run the following command:

```zsh
git commit --no-verbose
```

## Example Output

Here's an example of what the output might look like:

```diff hl_lines="11-55"
:memo: (docs/posts): Create blog post about Git commit verbose mode
# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# On branch main
# Your branch is up to date with 'origin/main'.
#
# Changes to be committed:
#	new file:   docs/posts/git-commit-verbose-mode.md
#
# ------------------------ >8 ------------------------
# Do not modify or remove the line above.
# Everything below it will be ignored.
diff --git a/docs/posts/git-commit-verbose-mode.md b/docs/posts/git-commit-verbose-mode.md
new file mode 100644
index 0000000..56748d8
--- /dev/null
+++ b/docs/posts/git-commit-verbose-mode.md
@@ -0,0 +1,36 @@
+---
+date: 2024-09-24
+authors:
+    - lasseheia
+categories:
+    - Git
+---
+
+# Git Commit Verbose Mode
+
+To make it easier to remember exactly what changes are staged before writing a commit message, you can use the git commit --verbose command. This will show the diff of the changes you're about to commit in the editor where you write the commit message.
+
+<!-- more -->
+
+```zsh
+git commit --verbose
+```
+
+You can set this option as the default by running the following command:
+
+```zsh
+git config --global commit.verbose true
+```
+
+Or, if you're using Home Manager:
+
+```nix
+{
+  programs.git = {
+    enable = true;
+    extraConfig = {
+      commit.verbose = true;
+    };
+  };
+}
+```
```
