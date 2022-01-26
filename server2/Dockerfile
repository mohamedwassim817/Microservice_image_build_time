FROM php:7.4
COPY calcul.php /tmp
VOLUME ["/usr/data/html"]
#ENTRYPOINT ["php","calcul.php"]
#CMD ["php","calcul.php"]
RUN cd /tmp && php calcul.php
  
