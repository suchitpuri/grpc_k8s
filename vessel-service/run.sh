echo 'starting http server on port 9000'
./http2_server >> go.logs & 
echo 'starting health check server on port 8000'
python -m SimpleHTTPServer 8000 >> /dev/null & 
echo 'starting gRPC server on port 443'
python server.py
