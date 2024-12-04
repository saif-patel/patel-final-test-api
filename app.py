from flask import Flask
import socket

app = Flask(__name__)
hostname = socket.gethostname()
ip_address = socket.gethostbyname(hostname)

@app.route('/')
def hello_cloud():
    return 'WELCOME TO PATEL FINAL TEST API SERVER'

@app.route('/host')
def host_name():
    return hostname

@app.route('/ip')
def host_ip():
    return ip_address

# Run the app on all IPs and specify a port
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
