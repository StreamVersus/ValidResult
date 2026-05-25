init:
	git submodule update --init --recursive

update:
	git submodule update --remote --merge

backend:
	cd backend && python3 -m venv venv && venv/bin/pip install -r requirements.txt

frontend:
	cd frontend && trunk build --release

dev-backend:
	cd backend && venv/bin/uvicorn main:app --reload

dev-frontend:
	cd frontend && trunk serve --open

setup: init backend

.PHONY: init update backend frontend dev-backend dev-frontend setup
