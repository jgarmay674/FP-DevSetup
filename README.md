# FP-DevSetup

## Entorno de desarrollo — DAW · Curso 2026-2027

Bienvenido. Este kit sirve para que **todas las máquinas del aula** trabajen igual.

Tú editas el código en VS Code. Docker ejecuta los servicios del curso.

**Orden del curso:** Vanilla JS → Angular → React + API.

---

## Por dónde empezar

**Empieza por este archivo (`README.md`).**  
Después sigue la secuencia numerada:

| Orden | Documento | Cuándo |
|-------|-----------|--------|
| 0 | **Este archivo** | Ahora: visión general |
| 1 | [README-01-instalacion.md](README-01-instalacion.md) | Instalar el entorno en tu PC |
| 2 | [README-02-flujo.md](README-02-flujo.md) | Cuando ya esté instalado: trabajo en clase |
| 3 | [README-03-comandos.md](README-03-comandos.md) | Consulta: Git, GitHub, Docker; **subir tu trabajo a GitHub** |
| 4 | [README-04-extensiones.md](README-04-extensiones.md) | Consulta: extensiones de VS Code |
| 5 | [README-05-aliases.md](README-05-aliases.md) | Consulta: atajos de terminal |
| 6 | [README-06-problemas.md](README-06-problemas.md) | Si algo falla |

Si te saltas un paso y te pierdes, vuelve aquí o abre el documento que toque según la tabla.

---

## ¿Qué es cada cosa? (muy breve)

| Tecnología | Qué es | En este proyecto |
|------------|--------|------------------|
| **Vanilla JS** | JavaScript en HTML, sin framework | Ejercicios en `vanilla-app/sites/` |
| **Angular** | Framework para aplicaciones web (cliente) | Contenedor `angular22` |
| **React** | Librería para interfaces de usuario | Contenedor `react19` |
| **Node.js** | JavaScript en el servidor | API `nodejs-api` (Express + MySQL) |
| **MySQL** | Base de datos | Datos del curso (`accesoDB`, `dbzDB`…) |
| **Docker** | Contenedores: mismo entorno en todos los PCs | Carpeta `entorno/` |
| **nginx** | Servidor web estático | Sirve los ejercicios vanilla |

---

## Resumen de instalación

Elige tu equipo y abre el manual completo:

**→ [README-01-instalacion.md](README-01-instalacion.md)**

| Equipo | Carpeta del script | Nota |
|--------|-------------------|------|
| Mac Intel | `mac-intel/` | Docker Desktop abierto |
| Mac chip M | `mac-arm/` | Docker Desktop abierto |
| Linux | `linux/` | Proyecto en `/home/...`, no en `/media/sf_*` |
| Windows | `windows/` | Dentro de la app **Ubuntu**, no en `C:\` |

En todas: `bash setup.sh` → luego `cd entorno && docker compose up -d`.

**phpMyAdmin / MySQL (clase):** usuario `root` · contraseña `dejame`  
→ [http://localhost:8081](http://localhost:8081)

---

## Estructura del proyecto

```
FP-DevSetup/
├── README.md                    ← estás aquí (empieza aquí)
├── README-01-instalacion.md
├── README-02-flujo.md
├── README-03-comandos.md
├── README-04-extensiones.md
├── README-05-aliases.md
├── README-06-problemas.md
├── mac-intel/ | mac-arm/ | linux/ | windows/
└── entorno/                     ← Docker del curso
    ├── docker-compose.yml
    ├── limpiar.sh
    ├── angular22/
    ├── react19/
    ├── nodejs-api/
    ├── db/
    └── vanilla-app/sites/
```

---

## Siguiente paso

Cuando hayas leído esta página, continúa con:

**→ [README-01-instalacion.md](README-01-instalacion.md)**
