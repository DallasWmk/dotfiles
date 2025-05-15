# Utilities used on the CLI
# Added At 02-28-2025
# Updated At 02-28-2025
# ========================================================

# Spotlight testing
# ========================================================

# Test individual V1 Fingerprint
def test-fp [fp] {
    cd /home/dallasw/src/censys/pipeline/services/spotlight
    go run ./cmd/tester --hm-addr 127.0.0.1:8443 --fingerprints=cmd/spotlight-api/fingerprints --pattern $fp --categories ./cmd/spotlight-api/hierarchical_categories.json --fixtures-path ./cmd/tester/fixtures.gz
}
