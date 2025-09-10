# Use official Newman image
FROM postman/newman:latest

# Create folder for reports
RUN mkdir -p /reports

# Copy your collection
COPY my-api-tests.json /etc/newman/my-api-tests.json

# Default command
CMD ["run", "/etc/newman/my-api-tests.json", "-r", "html", "--reporter-html-export", "/reports/newman-report.html"]
