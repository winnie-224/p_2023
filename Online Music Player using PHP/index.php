<?php require_once('music_connectdb.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
<title>sing with koko</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Simple Music Player App</title>
    <link rel="stylesheet" href="./font-awesome/css/all.min.css">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/styles.css">
    <link rel="stylesheet" href="./assets/css/main.css" />
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="./font-awesome/js/all.min.js"></script>
    <script src="./js/jquery-3.6.0.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/script.js"></script>
</head>

<body>
    <script>
        start_loader();

    </script>
			<div id="wrapper">
    <main>
    <!-- Header -->
					<header id="header">

						<div class="content">
						<div class="inner">
								<h1>koko!</h1>
								<p>A Music Player made with HTML, PHP, JS and MySQL</p>
							</div>
</div>
						<div class="logo">
							<span class="fa fa-star fa-spin fa-fw"></span>
						</div>
						

						<!-- Player -->
						<!--<div class="content">-->
							<!--<div class="inner">-->
							<article id="player">
								<!--<h2 class="major">Player</h2>-->
								<span class="image main"></span>
	<main>
                 <div class="col-lg-auto col-md-6 col-sm-12 col-xs-12">
                        <div class="col-md-12 text-center">
                            <img src="./images/music-logo.jpg" alt="" id="display-img" class="img-fluid border bg-gradient bg-dark" width=100>
                        </div>
                        <h4><b id="inplay-title">---</b></h4>
                        <small class="text-muted" id="inplay-duration">--:--</small>
                        <hr>
                        <p id="inplay-description">---</p>
                        <div class="d-flex w-100 justify-content-center">
                            <div class="mx-1">
                                <button class="btn btn-sm btn-light bg-gradient text-dark" id="prev-btn"><i class="fa fa-step-backward"></i></button>
                            </div>
                            <div class="mx-1">
                                <button class="btn btn-sm btn-light bg-gradient text-dark" id="play-btn" data-value="play"><i class="fa fa-play"></i></button>
                            </div>
                            <div class="mx-1">
                                <button class="btn btn-sm btn-light bg-gradient text-dark" id="stop-btn"><i class="fa fa-stop"></i></button>
                            </div>
                            <div class="mx-1">
                                <button class="btn btn-sm btn-light bg-gradient text-dark" id="next-btn"><i class="fa fa-step-forward"></i></button>
                            </div>
	                        </div>
	                        <div class="d-flex">
                            <div class="mx-1">
                                <span id="currentTime">--:--</span>
                            </div>
                            <div id="range-holder" class="mx-1">
                                <input type="range" id="playBackSlider" value="0">
                            </div>
                            <div class="mx-1">
                                <span id="vol-icon"><i class="fa fa-volume-up"></i></span> <input type="range" value="100" id="volume">
                            </div>
                        </div>
                        </div>
                        </div>
                        </main>

															</article>
						<table name = "dashboard" style="width:90%">
						<th></th>
						<th></th>
						<tr>
						<td id="dash_lib">
						<!-- Library -->
							<article id="library">
								<h2 class="major">Library</h2>
								<table id="music-list" >
										<tr><th><b>Title</th>
										<th></th></tr>
										<?php $st = "SELECT * FROM music_list";
										$music_list = $conn->query("SELECT * FROM music_list");
										while($row = $music_list->fetch_assoc()): 
										?>
										<tr width=60 class="item" data-id="<?= $row['id'] ?>">
										<td id="<?=$row['id']?>"><img src="<?=$row['image_path']?>" width = 15 alt=""><?=$row['title']?></td>
										<td>
										<button class="btn btn-sm play" data-id="<?= $row['id'] ?>" data-type="pause"><i class="fa fa-play"></i></button>
										
										<button class="btn btn-sm delete" data-id="<?= $row['id'] ?>"><i class="fa fa-trash"></i></button></td></tr>
										
										<?php endwhile; ?></table>
										<tr><td><a class="btn btn-sm plus" href="#Addnew"><i class="fa fa-plus"></i><a></td><td></td></tr>
										
                                            		
                                <div id="newmusic"></div>
								
							</article>
</td><td name="dash_play">
</table>


<article id="Addnew" href="#Addnew">
<h2 class="major">Add New Music</h2>
<form method="post" action="save.php" enctype="multipart/form-data">
<div class="fields">
<div class="field half">
											<label for="title">Title</label>
											<input type="text" name="title" id="title" required placeholder="Song Title" />
										</div>
										<div class="field half">
											<label for="description">Description</label>
											<textarea name="description" id="description" rows="4" required placeholder="Singer/Album/Movie"></textarea>
										</div>
										<div class="field half">
											<label for="audio">Upload File</label>
											<input name="audio" type="file" id="audio" required accept="audio/*" onchange="displayFileText(this)">
										</div>
										<div class="field half">
											<label for="image">Upload Image</label>
											<input name="image" type="file" id="image" required accept="image/*" onchange="displayFileText(this,'dImage')">
										</div>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Add" class="primary" /></li>
									</ul>
</form>
</article>
					</header>
<?php if(isset($conn) && $conn) @$conn->close(); ?>
</body>
</html>
