<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>News Api</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<body>
<script>

$(document).ready(function(){	  
	  $.ajax({
			url: "https://newsapi.org/v1/articles?source=the-next-web&sortBy=latest&apiKey=988168d0626645d581f0700cb2d41f0f",
			type :"Get",
			headers : {
			'Accept':'Application/json',
			//'Content-Type' : 'Application/json'
				'Content-Type' : 'Text/Plain'

			},
			data : "",
		 	success : function(news) {
				  console.log(news);
				  console.log(news.status);
				//var s=news;
				 $('#Status').append('<p><b>Status</b>'+news.status+'</p>');
				 $('#source').append('<p><b>Source</b>'+news.source+'</p>');
				 $('#sortBy').append('<p><b>SortBy</b>'+news.sortBy+'</p>');
				 $('#sortBy').append('<hr>');

				 var obj=news.articles;
				 for(i=0;i<obj.length;i++)
					 {
					 
					$('#json').append('<p><b>Author</b>  '+obj[i].author+'</p>');
					$('#json').append('<p><b>Title</b>  '+obj[i].title+'</p>');
					$('#json').append('<p><b>Description</b>  '+obj[i].description+'</p>');
					$('#json').append('<p><b>Url</b>  '+obj[i].url+'</p>');
					$('#json').append('<p><b>UrlToImage</b>  '+obj[i].urlToImage+'</p>');
					$('#json').append('<p><b>PublishedAt</b> '+obj[i].publishedAt+'</p>');
					$('#json').append('<hr>');




				/* 	  console.log(obj[i].author);
					  console.log(obj[i].title);
					  console.log(obj[i].description);
					  console.log(obj[i].url);
					  console.log(obj[i].urlToImage);
					  console.log(obj[i].publishedAt); */

					  
					 }
	
				 


				//$('#Status').text(s);
				  //document.getElementById('Status');
			//alert("its working"); 
			},
			error : function() {
			alert('Error while response..');
			}
			});
  });
</script>

<p id=Status></p>
<p id=source></p>
<p id=sortBy></p>
<p id='json'></p>
<div id='array'></div>



</body>
</html>