# Use official Newman image
FROM postman/newman:latest

# Create folder for reports
RUN mkdir -p /reports

# Copy collection into container
COPY my-api-tests.json /etc/newman/my-api-tests.json

# Default command: run tests and export HTML report
CMD ["run", "/etc/newman/my-api-tests.json", "-r", "html", "--reporter-html-export", "/reports/newman-report.html"]
