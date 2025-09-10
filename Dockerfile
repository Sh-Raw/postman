FROM postman/newman:latest

RUN mkdir -p /reports

COPY my-api-tests.json /etc/newman/my-api-tests.json

CMD ["run", "/etc/newman/my-api-tests.json", "-r", "html", "--reporter-html-export", "/reports/newman-report.html"]
