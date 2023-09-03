### Configure graylog

1. Go to http://localhost:9000/system/inputs
2. Select Beats input
3. Click Launch new input
4. Enter a title. Leave all other fields with default values.
5. Click Launch input
6. Restart docker compose.

### Generate logs
dotnet run --project .\MySqlTest.DataGenerator\MySqlTest.DataGenerator.csproj

## Results

### ELK stack

![ELK overall](screenshots/image-4.png)
![ELK disk](screenshots/image-5.png)
![ELK by container](screenshots/image-13.png)
![ELK network](screenshots/image-11.png)

### Graylog stack

![Graylog overall](screenshots/image-6.png)
![Graylog disk](screenshots/image-7.png)
![Graylog by container](screenshots/image-12.png)
![Graylog network](screenshots/image-9.png)

### Conclusion

ELK and Graylog use similar amount of resources. Elastic Search consumes slightly more CPU than Open Search, and Graylog consumes slightly more CPU than Logstash. Also, Open Search consumes slightly more memory than Elastic Search, but that's compensated by Kibana in ELK stack which also takes some memory. 
