#!/bin/bash
docker-compose up -d
echo "Attacker available at: http://attacker.local:8081"
echo "Victim available at: http://victim.local:8080"