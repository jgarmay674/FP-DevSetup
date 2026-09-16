---
marp: true
theme: default
paginate: true
style: |
  /* Estilos compartidos para exportar README y DOCENTE con Marp */
  section {
    padding: 32px 48px 80px 48px;
    font-size: 22px;
    line-height: 1.35;
  }
  h1 {
    font-size: 1.55em;
    margin-bottom: 0.4em;
  }
  h2 {
    font-size: 1.25em;
    margin-top: 0.2em;
    margin-bottom: 0.35em;
  }
  h3 {
    font-size: 1.05em;
    margin: 0.3em 0;
  }
  pre {
    font-size: 0.72em;
    line-height: 1.28;
    margin: 0.4em 0;
  }
  code {
    font-size: 0.9em;
  }
  table {
    font-size: 0.85em;
    margin: 0.4em 0;
  }
  ul,
  ol {
    margin: 0.3em 0;
    padding-left: 1.2em;
  }
  li {
    margin: 0.15em 0;
  }
  p {
    margin: 0.35em 0;
  }
  blockquote {
    font-size: 0.92em;
    margin: 0.3em 0;
  }
---









# 03 — Herramientas y comandos

**Secuencia:** … → **03 comandos**

Qué instaláis en el bloque 01 y los comandos del curso.  
Si aún no habéis instalado → README-01

---

## ¿Hace falta todo?

| Herramienta | ¿Para qué? | ¿Imprescindible? |
|-------------|------------|------------------|
| Git | Versionar, entregas | Sí |
| Docker | Mismo entorno en todos | Sí |
| GitHub CLI (`gh`) | Login, repos | Sí (si usáis GitHub) |
| SSH | Push sin contraseña cada vez | Recomendado |
| VS Code | Editor del curso | Sí |
| Homebrew / Oh My Zsh | Solo Mac | Útil |

No instalamos herramientas de más: Git + Docker + GitHub.

---

## Git — comandos del curso

```bash
git status · git add . · git commit -m "mensaje"
git push · git pull · git log --oneline
```

Una vez (eso **no** lo hace `gh auth login`):

```bash
git config --global user.name  "Tu Nombre"
git config --global user.email "tu@email.com"
```

Atajos: `gs`, `ga`, `gc`, `gp`, `gl` → README-05

---

## GitHub CLI, SSH y Docker

```bash
gh auth login
gh repo create
docker run hello-world
cd entorno && docker compose up -d && docker compose ps
```

En clase: **HTTPS** + navegador. WSL sin navegador → https://github.com/login/device  
SSH: el script crea `~/.ssh/id_ed25519`. Más flujo → README-02 · Compose → `entorno/README.md`

---

## Subir a GitHub — mapa y qué NO se sube

| Situación | Qué hacer |
|-----------|-----------|
| Aún no tenéis repo | **Camino A** (una vez) |
| Repo vacío ya existe en la web | **Camino B** (una vez) |
| Ya subisteis; mismo PC | `add` → `commit` → `push` |
| Otro PC | `git clone` |
| `origin ya existe` | Normal tras A: **no** repetir `remote add` |

Camino A y B son **alternativas**. No subáis: `node_modules/`, `dist/`, `DOCENTE-*`, PDF, `.env`.

---

## Camino A (lo habitual)

```bash
cd ~/Descargas/FP-DevSetup
git init -b main
git add .
git status
git commit -m "Primer commit: entorno DAW"
gh repo create FP-DevSetup --public --source=. --remote=origin --push
```

**No** ejecutéis después `git remote add origin ...`.

---

## Camino B (repo vacío ya creado)

```bash
git init -b main
git add .
git commit -m "Primer commit: entorno DAW"
git remote add origin https://github.com/TU_USUARIO/FP-DevSetup.git
git push -u origin main
```

Si `origin ya existe`:

```bash
git remote -v
git push -u origin main
```

---

## Push periódico y clonar

**Mismo PC (cada clase):**

```bash
git add .
git commit -m "Clase: qué hicisteis"
git push
```

**Otro PC:**

```bash
git clone https://github.com/TU_USUARIO/FP-DevSetup.git
```

| Quién | Repo |
|-------|------|
| Profesor | kit base |
| Alumno | **vuestra** cuenta (no push al del profesor) |
