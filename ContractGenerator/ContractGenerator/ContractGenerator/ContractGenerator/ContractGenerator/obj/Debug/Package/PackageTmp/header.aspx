<nav class="navbar navbar-default" style="
    margin-left: -8px;
    margin-right: -8px;
    margin-top: -8px;
">
  <div class="container-fluid"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#defaultNavbar1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="/MainPanel.aspx">E74 Contract Gen</a></div>
       
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="defaultNavbar1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/MainPanel.aspx">Home<span class="sr-only">(current)</span></a></li> 
       <!-- <li><a href="#">Link</a></li> -->
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Contracts<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/ViewContract.aspx">View Contracts</a></li>
           <!--  <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li> -->
          </ul>
        </li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Administrator<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="/Management/CreateTemplate.aspx">Create Contract Template</a></li>
                  <li><a href="/Management/ViewTemplate.aspx">View Contract Template</a></li>
                  <li><a href="/ViewEditSection.aspx">View/Edit Contract Section</a></li>
                  <li><a href="/Management/CreateSection.aspx">Create New Section</a></li>
              </ul>
          </li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Profiles<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
          <!--  <li><a href="#">View Profiles*</a></li> -->
                  <li><a href="/SignUp.aspx">Add Users</a></li>
          <!--  <li><a href="#">Add Manager**</a></li>	-->
           <!--  <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li> -->
              </ul>
          </li>
      </ul>
    <!--  <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>-->
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/MyProfile.aspx">User</a></li>
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><script> document.write(user); </script><span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
           
           <!-- <li><a href="#">Settings</a></li> -->
            <li><a href="/MyProfile.aspx">Profile</a></li>
            <li class="divider"></li>
            <li><a href="Logout.aspx">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>