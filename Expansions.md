# Zsh/Bash History Expansion Cheat Sheet

## Common History Expansions

| Expansion | Meaning | Example |
|:-:|:-:|:-|
| `!!` | Last command | `sudo !!` → `sudo <last cmd>` |
| `!$` | Last argument of last command | `echo hello` → `nvim !$` → `nvim hello` |
| `!*` | All arguments of last command | `cp k.c code/` → `ls !*` → `ls k.c code/` |
| `!:n` | nth WORD of last command (starts at 0) | `nvim me` → `touch !:0` → `touch nvim` |
| `!:n-m` | Range of words | `echo a b c d` → `echo !:1-2` → `echo a b` |
| `!:^` | First argument of last command | `echo hello world` → `nvim !:^` → `nvim hello` |
| `!:$`| Last argument (same as `!$`) | `echo one two` → `nvim !:$` → `nvim two` |

---

## Modifiers

| Modifier | Meaning | Example |
|:-:|:-:|:-|
|`:p` | Print without executing | `!!:p` → Just prints last command |
| `:h` | Head (dirname) | `echo a/b/k.c` → `nvim !$:h` → `nvim a/b` |
| `:t` | Tail (basename) | `echo a/b/k.c` → `nvim !$:t` → `nvim k.c` |
| `:r` | Remove extension | `echo k.txt` → `mv !$ !$:r.md` → `mv k.txt k.md` |
| `:e` | Extract extension | `echo file.txt` → `echo !$:e` → `txt` |
| `:q` | Quote the result | `echo !$:q` → `echo 'file name with space'` |
| `:s/old/new/` | Substitute once | `echo kek` → `cat !*:s/kek/me` → `cat me` |
| `:gs/old/new/` | Global substitute | `echo a aw` → `cat !*:gs/a/b` → `cat b bw` |

---

## Combining Expansions

You can combine expansions and modifiers for powerful usage:

```bash
echo code/string/strcat.c
nvim !$:h/strlen.c
```

Which expands as

```bash
nvim code/string/strlen.c
```
