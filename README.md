# gan-server

### Instructions
1. Download and save model [checkpoint](https://drive.google.com/file/d/1XSD1UjPVftblBrDhLf-NmsXbve9_czO8/view?usp=sharing) into `models/default` folder
2. Run `docker build`
3. Run `docker run uvicorn main:app --host 0.0.0.0 --port 80`
4. Service is accessible at localhost:8080
