<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/needpopup.min.css">
		<style>
			.wrapper {
				padding: 40px 60px;
			}

			a[data-needpopup-show] {
				display: inline-block;
				margin: 0 10px 10px 0;
				padding: 10px 15px;
				font-weight: bold;
				letter-spacing: 1px;
				text-decoration: none;
				color: #fff;
				background: #7B5207;
			  border-radius: 3px;
			  box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.2);
			}

			p {
				font-size: 1.2em;
				line-height: 1.4;
				color: #343638;
				margin: 20px 0;
			}

			.needpopup {
			  border-radius: 6px;
			  box-shadow: 0 1px 5px 1px rgba(0, 0, 0, 1);
			}

			.needpopup p {
				margin: 0;
			}
			.needpopup p + p {
				margin-top: 10px;
			}
		</style>

	</head>
	<body>
		<div class="wrapper">
			<a href="#" data-needpopup-show="#small-popup">Show small popup</a>
			<a href="#" data-needpopup-show="#big-popup">Show big popup</a>
			<a href="#" data-needpopup-show="#custom-popup">Show custom options popup</a>


			<div id='small-popup' class="needpopup">
				<a href="#" data-needpopup-show="#big-popup">Go to big popup</a>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
			</div>
			<div id='custom-popup' class="needpopup" data-needpopup-options="custom">
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
			</div>
			<div id='big-popup' class="needpopup">
				<a href="#" data-needpopup-show="#small-popup">Go to small popup</a>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
			</div>
		</div>

		<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
		<script src="js/needpopup.min.js"></script>
		<script>  
			needPopup.config.custom = {
				'removerPlace': 'outside',
				'closeOnOutside': false,
				onShow: function() {
					console.log('needPopup is shown');
				},
				onHide: function() {
					console.log('needPopup is hidden');
				}
			};
			needPopup.init();
		</script>
	</body>
</html>