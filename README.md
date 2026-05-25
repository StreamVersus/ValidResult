# ValidResult

Merged repo for the ValidResult AI evaluation platform. Uses git submodules to manage the backend and frontend separately.

## Structure

```
validresult/
  backend/    ← Python FastAPI backend (submodule)
  frontend/   ← Leptos WASM frontend (submodule)
  Makefile
```

## First-time setup

```bash
git clone --recurse-submodules https://github.com/StreamVersus/ValidResult
cd ValidResult
make setup
```

Then add your `.env` file inside `backend/` — see the backend README for required variables.

If you cloned without `--recurse-submodules`:

```bash
make init
make setup
```

## Commands

| Command             | Description                             |
|---------------------|-----------------------------------------|
| `make init`         | Pull and initialise all submodules      |
| `make update`       | Pull latest commits from all submodules |
| `make setup`        | Init submodules + install backend deps  |
| `make dev-backend`  | Run backend in dev mode                 |
| `make dev-frontend` | Run frontend in dev mode                |
| `make backend`      | Install backend dependencies            |
| `make frontend`     | Build frontend for production           |
