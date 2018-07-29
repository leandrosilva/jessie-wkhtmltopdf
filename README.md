# jessie-wkhtmltopdf

Simple image with the latest **wkhtmltopdf** installed on a nice Debian **jessie**.

    git clone https://github.com/leandrosilva/jessie-wkhtmltopdf.git
    cd jessie-wkhtmltopdf
    docker build -f Dockerfile -t jessie-wkhtmltopdf .
    docker run -it -v /whatever/path/you/like/:/whatever --name jessie_wk jessie-wkhtmltopdf
    wkhtmltopdf http://www.google.com google_home.pdf

Boom! There you go...
