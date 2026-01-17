# Base n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install only the tools you actually need
RUN apk add --no-cache poppler-utils

# Optional: create /shared/tmp and /shared/pdf folders with full permissions
RUN mkdir -p /shared/tmp /shared/pdf && chmod -R 777 /shared

# Switch back to the n8n (node) user
USER node
