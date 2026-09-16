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









# 04 — Extensiones de VS Code

**Secuencia:** … → **04 extensiones**

El bloque 02 instala las extensiones del curso, quita algunas antiguas  
y deja un `settings.json` sencillo.

Si aún no habéis instalado → README-01

---

## Extensiones instaladas

| Extensión | Para qué | Cuándo |
|-----------|----------|--------|
| Docker | Contenedores y logs | Desde `compose up` |
| WSL | Proyecto en Ubuntu | Solo Windows |
| GitLens | Historial Git | Cuando uséis Git |
| Angular Language Service | Autocompletado | Módulo Angular |
| React Snippets | Atajos JSX/TS | Módulo React |
| HTML CSS Support | HTML/CSS | Vanilla y front |
| Prettier | Formatear al guardar | Siempre |
| Database Client | Consultar MySQL | BBDD |

---

## No instalamos, settings y consulta

| Extensión | Motivo |
|-----------|--------|
| GitHub Copilot | Licencia del centro |
| Temas, Tailwind, ESLint… | No imprescindibles |

`settings.json`: fuente 14, tab 2, Prettier al guardar (si existía → `.bak`).

Aliases → README-05 · Flujo → README-02 · Índice → README.md
