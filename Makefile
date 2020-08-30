.DEFAULT_GOAL := check

start:
	@echo "🏃‍♀️ Starting project"

test:
	@echo "Testing..."

build:
	@echo "👩‍🏭 Building..."

check: test build
	@echo "✅"

docs:
	@doctoc .
	@echo "📚 Documentation ready!"

release_patch: release

release_minor:
	@.scripts/finish-release minor

release_major:
	@.scripts/finish-release major

release:
	@.scripts/finish-release patch
