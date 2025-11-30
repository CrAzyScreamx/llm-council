#!/bin/sh

# Create runtime-config JSON file
cat <<EOF > /usr/share/nginx/html/config.json
{
  "API_BASE": "${VITE_BACKEND_URL}"
}
EOF

echo "Using API_BASE: ${VITE_BACKEND_URL}"

exec "$@"