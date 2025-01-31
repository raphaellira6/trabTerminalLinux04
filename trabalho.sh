#!/bin/bash

grep -oE '[01]*' bruxarias.txt > 1a.txt

grep -oE '1[01]{0,7}' bruxarias.txt > 1b.txt

grep -xE '1[01]{0,7}' bruxarias.txt > 1c.txt

grep -oE '\b(0|[1-9][0-9]*)\b' bruxarias.txt > 1d.txt

grep -oE '[ue]tt' bruxarias.txt > 1e.txt

grep -oE '([a-z][a-z][a-z]+|[A-Z][a-z][a-z]+)' bruxarias.txt > 1f.txt

grep -oE '\b[a-zA-Z][a-zA-Z0-9_]*\b' bruxarias.txt > 1g.txt

grep -oE '\b((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b' bruxarias.txt > 1h.txt

sudo find /etc -type d > 2a.txt

sudo find /etc -maxdepth 1 -type d > 2b.txt

sudo find /etc -type f -size +1k > 2c.txt

sudo find /var -type f -mtime -7 > 2d.txt

awk -F: '{print $1}' /etc/passwd > 3a.txt
awk -F: 'NR>10 && NR<20 {print $1}' /etc/passwd > 3b.txt

sudo sed "s/^$(whoami):/exercicio:/" /etc/passwd > 4a.txt
sudo sed "/^$(whoami):/d" /etc/passwd > 4b.txt
