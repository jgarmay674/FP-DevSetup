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









# 01 — Instalación del entorno

**Secuencia:** README.md → **01 instalación** → 02 flujo

Si algo falla → README-06-problemas

En este documento instaláis el entorno en **Mac**, **Linux** o **Windows**.  
Leed primero “Antes de empezar”. Después id **solo a la parte de vuestro sistema**.

---

## Antes de empezar (todas)

1. Descomprimid el ZIP completo de `FP-DevSetup`.
2. Debe existir `entorno/docker-compose.yml`.
3. Usad **siempre** `bash setup.sh` (aunque la terminal sea zsh).
4. El script **instala herramientas**. **No** arranca los contenedores.
5. Los contenedores: `docker compose up -d` dentro de `entorno/`.

| Equipo | Carpeta del script |
|--------|-------------------|
| Mac Intel | `mac-intel/` |
| Mac chip M | `mac-arm/` |
| Linux | `linux/` |
| Windows | `windows/` (Ubuntu WSL) |

---

## Parte A — Mac

```bash
cd ~/Descargas/FP-DevSetup/mac-intel    # o mac-arm
bash setup.sh
```

Responded `s` en los **4 bloques**. Después: `gh auth login` y `git config` (nombre y email).

Abríd Docker Desktop (ballena estática) y:

```bash
docker run hello-world
cd ~/Descargas/FP-DevSetup/entorno
docker compose up -d
docker compose ps
```

---

## Parte B — Linux

Copiad `FP-DevSetup` a una carpeta **normal** (`/home/usuario/Descargas/...`).  
**No** ejecutéis Docker desde `/media/sf_*` ni rutas con permisos incompletos.

```bash
cd ~/Descargas/FP-DevSetup/linux
bash setup.sh
```

Responded `s` en los 4 bloques. Tras el bloque 01: **cerrad sesión** de usuario o `newgrp docker`.  
Después: `gh auth login`, `git config`, `docker run hello-world`, `cd entorno && docker compose up -d`.

---

## Parte C — Windows

| Sistema | Para qué |
|---------|----------|
| **Windows** | Docker Desktop, VS Code, WSL |
| **Ubuntu (WSL)** | `setup.sh`, Git y Docker del curso |

Usad la app **Ubuntu** (no PowerShell + `wsl`). Una vez:

1. PowerShell admin: `wsl --install -d Ubuntu`
2. Docker Desktop → WSL Integration → **Ubuntu**
3. VS Code + extensión **WSL**
4. Proyecto en `~/Descargas` **dentro de Ubuntu** (no `/mnt/c/...`)
5. `cd windows && bash setup.sh`

Si `gh auth login` no abre el navegador → https://github.com/login/device

---

## Comprobación final (todas)

```bash
cd ~/Descargas/FP-DevSetup/entorno
docker compose ps
```

Seis servicios **Up** · MySQL **healthy**

| Qué probar | URL |
|------------|-----|
| Vanilla | http://localhost:4300/ |
| Registro / login | http://localhost:4300/api-demo/ |
| phpMyAdmin | http://localhost:8081 (`root` / `dejame`) |

---

## Bloques del script y reinstalar

| Bloque | Qué hace | Detalle |
|--------|----------|---------|
| 01 | Herramientas base | README-03 |
| 02 | VS Code + extensiones | README-04 |
| 03 | Carpetas (+ permisos Linux/WSL) | — |
| 04 | Aliases | README-05 |

```bash
cd entorno && bash limpiar.sh
cd ../mac-intel   # o mac-arm / linux / windows
bash setup.sh
cd ../entorno && docker compose up -d
```

Cuando la comprobación funcione → **README-02-flujo.md**  
Si algo no arranca → **README-06-problemas.md**
