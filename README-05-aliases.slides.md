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









# 05 — Aliases de terminal

**Secuencia:** … → **05 aliases**

Se añaden a `~/.zshrc` (Mac) y/o `~/.bashrc` (Linux/WSL).  
**Abrid una terminal nueva** (o `reload`) para que funcionen.

---

## Docker Compose y Git

| Alias | Comando / uso |
|-------|---------------|
| `dcu` / `dcud` | `compose up -d` — levantar |
| `dcd` | `compose down` — parar (conserva MySQL) |
| `dcdv` | `compose down -v` — parar y **borrar** MySQL |
| `dcl` / `dcs` / `dce` | logs · estado · `exec` |
| `gs` `ga` `gc` `gp` `gl` | status · add · commit · push · log |

---

## Utilidades y dentro de contenedores

| Alias / comando | Para qué |
|-----------------|----------|
| `ll` · `..` / `...` · `reload` · `ports` | Listar, subir carpetas, recargar shell, puertos |
| `ng-new` / `ng-serve` | Solo dentro de `angular22` |
| `react-new` / `react-start` | Solo dentro de `react19` |

```bash
docker compose exec angular22 bash
```

Problemas → README-06 · Flujo → README-02
