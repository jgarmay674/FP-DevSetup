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








# 06 — Problemas frecuentes

Consulta cuando haga falta.  
Instalación → README-01 · Flujo → README-02

---

## Docker y permisos (Linux)

**Mac / Windows:** Docker Desktop abierto (ballena lista).  
**Linux:** `sudo systemctl start docker` o `newgrp docker`.  
**Windows:** Desktop abierto **y** WSL Integration con Ubuntu.

| Síntoma | Qué hacer |
|---------|-----------|
| `permission denied` con docker | Cerrar **sesión** o `newgrp docker` |
| MySQL Permission denied en initdb | Proyecto en home (no `/media/sf_*`) |
| 403 / 404 en :4300 | `chmod` en `vanilla-app/sites` |

---

## Windows, Git y MySQL

| Síntoma | Qué hacer |
|---------|-----------|
| Hot reload no refresca | Proyecto en `~/…`, no `/mnt/c/...` |
| Terminal rara | App **Ubuntu**, no PowerShell + `wsl` |
| `gh` no abre navegador | https://github.com/login/device |
| `origin ya existe` | `git remote -v` y `git push` (no repetir `remote add`) |
| Tabla ya existe / init falla | Solo **un** `.sql` en `entorno/db/` |
| Access denied MySQL | `bash limpiar.sh` y `up -d` (`root` / `dejame`) |

---

## Otros

| Síntoma | Qué hacer |
|---------|-----------|
| Puerto ocupado | `lsof -i :4222` y `kill` |
| `ng-new` no existe | Entrar con **bash**, no `sh` |
| bad substitution (Mac) | `bash setup.sh`, no `sh` |
| Aliases no van | Terminal nueva o `reload` |

Reinstalar → README-01 · Índice → README.md
