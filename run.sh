#!/bin/bash
docker run -d --name ss --restart always -p 8388:8388 proxy -s 0.0.0.0 -p 8388 -k PASSWORD -m aes-256-cfb --fast-open
