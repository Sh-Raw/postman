# Use official Newman image
FROM postman/newman:latest

# Create folder for reports
RUN mkdir -p /reports

# Copy your Postman collection into the container
COPY my-api-tests.json /etc/newman/my-api-tests.json

# Default command to run the collection and export HTML report
CMD ["newman", "run", "/etc/newman/my-api-tests.json", "-r", "html", "--reporter-html-export", "/reports/newman-report.html"]
