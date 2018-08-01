echo 'starting http server on port 9000'
./http2_server >> go.logs & 
echo 'starting gRPC server on port 443'
python server.py
