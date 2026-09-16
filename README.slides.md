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









# FP-DevSetup

## Entorno de desarrollo — DAW · Curso 2026-2027

Kit para que **todas las máquinas del aula** trabajéis igual.

Vosotros editáis el código en VS Code. Docker ejecuta los servicios del curso.

**Orden del curso:** Vanilla JS → Angular → React + API.

---

## Por dónde empezar

**Empezad por `README.md`.** Después seguid la secuencia numerada:

| Orden | Documento | Cuándo |
|-------|-----------|--------|
| 0 | Este archivo | Visión general |
| 1 | README-01-instalacion | Instalar el entorno |
| 2 | README-02-flujo | Trabajo en clase |
| 3–5 | Comandos, extensiones, aliases | Consulta |
| 6 | README-06-problemas | Si algo falla |

Si os perdéis, volved al índice o abrid el documento que toque.

---

## ¿Qué es cada cosa?

| Tecnología | Idea | En este proyecto |
|------------|------|------------------|
| Vanilla JS | JS sin framework | `vanilla-app/sites/` |
| Angular | Framework de cliente | contenedor `angular22` |
| React | Interfaces de usuario | contenedor `react19` |
| Node.js | JS en el servidor | API `nodejs-api` |
| MySQL | Base de datos | `accesoDB`, `dbzDB`… |
| Docker | Mismo entorno en todos los PCs | carpeta `entorno/` |
| nginx | Servidor estático | sirve vanilla |

---

## Resumen de instalación

| Equipo | Carpeta | Nota |
|--------|---------|------|
| Mac Intel | `mac-intel/` | Docker Desktop abierto |
| Mac chip M | `mac-arm/` | Docker Desktop abierto |
| Linux | `linux/` | Proyecto en `/home/...` |
| Windows | `windows/` | App **Ubuntu**, no `C:\` |

En todas: `bash setup.sh` → `cd entorno && docker compose up -d`

**phpMyAdmin:** `root` / `dejame` → http://localhost:8081

Detalle → `README-01-instalacion.md`

Cuando el laboratorio ya arranca: → `entorno/README.md`

---

## GitHub y estructura

| Situación | Qué hacer |
|-----------|-----------|
| Primera vez | Camino A **o** B en el README-03 (no los dos) |
| Mismo PC | `git add` · `commit` · `push` |
| Otro PC | `git clone` + instalación |
| Alumno | Repo en **vuestra** cuenta |

```
FP-DevSetup/
├── README.md  (+ *.slides.md)
├── README-01 … README-06
├── mac-intel/ | mac-arm/ | linux/ | windows/
└── entorno/  (compose, API, vanilla, …)
```

Detalle GitHub → `README-03-comandos.md`

---

## Siguiente paso

Continuad con la instalación:

**→ README-01-instalacion.md**
