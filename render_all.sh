#!/bin/bash
# Render the Quarto site in English
quarto render --profile english
# Render the Quarto site in Spanish
quarto render --profile spanish

# Create redirect index.html for GitHub Pages
cat <<EOF > docs/index.html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="refresh" content="0; url=en/index.html" />
    <link rel="canonical" href="https://hope-uib-bio.github.io/FOSSILPOL-website/en/index.html" />
    <title>Redirecting to English version...</title>
  </head>
  <body>
    <p>If you are not redirected automatically, <a href="en/index.html">click here</a>.</p>
  </body>
</html>
EOF
