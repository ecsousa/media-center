/^\s*location \/ {/i\
        auth_basic "Restricted";\
        auth_basic_user_file /var/www/rutorrent/.htpasswd;\

/^\s*location \/ {/,/}/ {
    /auth_basic/d
    /auth_basic_user_file/d
}

/server_name/d

/location \/RPC2 {/,/}/ {
  /}/i\
        client_max_body_size 20M;

  /}/a\
\
        location /sickrage {\
            proxy_pass http://sickrage:8081;\
            proxy_set_header Host $host;\
            proxy_set_header X-Real-IP $remote_addr;\
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;\
        }\
\
        location /couchpotato {\
            proxy_pass http://couchpotato:5050;\
            proxy_set_header Host $host;\
            proxy_set_header X-Real-IP $remote_addr;\
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;\
        }

}


