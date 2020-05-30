# HTML_Linter_Capstone_project
This is a basic linter for html documents. It can check for syntax errors and state where in the in document these errors can be found.

## Built With

- Ruby
- Rspec

## How to run linter?
- You can run ruby ./bin/html_linter.rb file on your terminal.
- If you want to use another html document you can write the file path in the object of Linter class.

## The kind of errors this linter detects?
The linter can detect the following errors in the code;
- an open tag on particular line of the html document.
- an open apostrophe (") in the code syntax.
- a missing alt="" in the \<img/> element in the code syntax.
- missing tags like \<!DOCTYPE html> and \<html lang="en">
- missing good semantic tags like \<html lang="en">\</html>, \<head>\</head>,\<body>\</body>
- misplacement of element \<link> and \<meta> tags outside of the <head></head> tags.

## What is a good or bad code based on this linter?
# Examples?
- Bad code is \<DOCTYPE> and a better code is \<!DOCTYPE html>

- Bad code is \<html>\</html> and a better code is \<html lang="en">\</html>

- Bad code is                                                         Good code                                         

\<a href="#">\<img src="assets/logo.png" ></a>        vs        \<a href="#">\<img src="assets/logo.png" alt ="logo"></a>



\<meta http-equiv="X-UA-Compatible content="IE=edge">           \<meta http-equiv="X-UA-Compatible" content="IE=edge">
>


-Bad code for head tags is;

\<head>

  \<meta name="viewport" content=" width=device-width, initial-scale=1.0">

  \<meta http-equiv="X-UA-Compatible" content="IE=edge">

  \<link rel="stylesheet" type="text/css" href="stylesheet.css">

\</head>
\<title>Hello World!</title>


Good code for head tags elements is ;

\<head>

  \<title>Hello World!</title>

  \<meta name="viewport" content=" width=device-width, initial-scale=1.0">

  \<link rel="stylesheet" type="text/css" href="stylesheet.css">

\</head>

## Author

👤 **Ezeokwelume Kosisochukwu Stephen**

- E-mail: [kossyeze@gmail.com]
- Github: [@KossySteve](https://github.com/KossySteve)
- Twitter: [@EzeSteve3](https://twitter.com/EzeSteve3/)
- Linkedin: [linkedin](https://www.linkedin.com/in/steve-ez-b090ba198/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!
