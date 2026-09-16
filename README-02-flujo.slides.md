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









# 02 — Flujo de trabajo en clase

**Secuencia:** README.md → 01 instalación → **02 flujo**

Este documento es el del **día a día**: qué hacer cuando el entorno ya está instalado.

Si aún no habéis instalado → README-01  
Si algo falla → README-06

---

## 1. Después de setup.sh (una vez)

```bash
gh auth login
git config --global user.name  "Tu Nombre"
git config --global user.email "tu@email.com"
```

- `gh auth login` → acceso a GitHub · `git config` → autor de commits (**no** es lo mismo)

```bash
docker run hello-world
cd ~/Descargas/FP-DevSetup/entorno
docker compose up -d && docker compose ps
```

Con `up -d` arrancan: MySQL, phpMyAdmin, API, Vanilla, Angular y React.

---

## 2. Primer día — comprobar y Vanilla

1. `cd entorno && docker compose up -d`
2. http://localhost:4300/ — índice Vanilla (`vanilla-app/sites/`)
3. http://localhost:4300/api-demo/ — registro y login
4. http://localhost:8081 — phpMyAdmin (`root` / `dejame`)

Cómo está montado Docker → `entorno/README.md`

---

## 3. Angular 22

```bash
cd entorno
docker compose exec angular22 bash
ng-new mi-proyecto
cd mi-proyecto
ng-serve
```

Otra terminal: `code ./angular22/mi-proyecto`  
Navegador: http://localhost:4222

Entrad siempre con **bash** (no `sh`).

---

## 4. React 19

```bash
cd entorno
docker compose exec react19 bash
react-new mi-app
cd mi-app
npm install
react-start
```

Otra terminal: `code ./react19/mi-app`  
Navegador: http://localhost:4319

---

## 5. Puertos y MySQL

| Servicio | URL |
|----------|-----|
| Vanilla | :4300 |
| Demo API | :4300/api-demo/ |
| Angular | :4222 |
| React | :4319 |
| API Node | :3000 |
| phpMyAdmin | :8081 |

**MySQL (clase):** `root` / `dejame`  
BD: `accesoDB`, `dbzDB`, `superheroDB`

Reset: `cd entorno && bash limpiar.sh && docker compose up -d`

---

## 6. Docker habitual + GitHub + consultas

```bash
docker compose up -d
docker compose down
docker compose ps
docker compose exec angular22 bash
```

| Situación | Comandos / documento |
|-----------|----------------------|
| Ya tenéis repo | `git add .` → `commit` → `push` |
| Primera vez | Camino A o B en README-03 |
| Otro PC | `git clone` + instalación |
| Extensiones / aliases / errores | README-04 · 05 · 06 |
| Compose / Dockerfiles | `entorno/README.md` |
