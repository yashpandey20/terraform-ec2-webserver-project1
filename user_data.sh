#!/bin/bash

set -eux

# Update Ubuntu packages
apt-get update -y

# Install Apache
apt-get install -y apache2

# Create webpage
cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Terraform AWS Project</title>
    <style>
        body {
            font-family: Arial;
            background: #e9f2ff;
            text-align: center;
            padding: 100px;
        }

        .container {
            background: white;
            padding: 40px;
            border-radius: 12px;
            max-width: 600px;
            margin: auto;
        }

        h1 {
            color: #1565c0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>AWS EC2 Web Server</h1>
        <h2>Deployed using Terraform</h2>
        <p>Apache Web Server is running successfully!</p>
        <p>Infrastructure as Code - AWS</p>
    </div>
</body>
</html>
EOF

# Start Apache
systemctl enable apache2
systemctl start apache2

systemctl status apache2 --no-pager
