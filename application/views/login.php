<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<head>
	<meta charset="utf-8">
	<title><?php echo $title; ?></title>
	<link rel="stylesheet" href="<?php echo base_url('assets/bootstrap-3.3.1/css/custom.css')?>">
	<link rel="stylesheet" href="<?php echo base_url('assets/bootstrap-3.3.1/css/bootstrap-theme.min.css')?>">
	<link rel="stylesheet" href="<?php echo base_url('assets/css/style.css')?>">
	<script src="<?php echo base_url('assets/js/jquery-2.1.1.min.js')?>"></script>
	<script src="<?php echo base_url('assets/bootstrap-3.3.1/js/bootstrap.min.js')?>"></script>
</head>
<body>
    <div id="login">
		
        <h3 class="text-center text-red pt-5"><img height="90" style="padding:10px;" src="<?php echo base_url("assets/images/logo.png") ?>" >SMP MUHAMMADIYAH 2</h3>		
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
				<?php
					 $msg = $this->session->flashdata('admin_login_msg');
				?>
				<?php if(!empty($msg)): ?>
				<div class="alert alert-danger">
					<a href="#" class="close" data-dismiss="alert">&times;</a>
					<strong>Error!</strong> <?php echo $msg;?>
				</div>
				<?php endif; ?>
                    <div id="login-box" class="col-md-12">
                        <form role="form" action="<?php echo site_url("login/auth") ?>" method="POST">
						<br>
                            <h3 class="text-center text-info">.:: LOGIN ::.</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="username" id="username" class="form-control" autofocus>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" value="" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Login">
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
