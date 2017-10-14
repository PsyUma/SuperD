class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
      result = ActiveRecord::Base.connection.exec_query(
          'SELECT u.firstname, u.lastname, u.email, u.phone, u.address,
          c.companyname, ca.catname, ut.usertypename FROM SuperDUser u
inner join Company c on c.companyid = u.companyid
inner join Category ca on ca.catid = u.categoryid
inner join UserType ut on ut.usertypeid = u.usertypeid')
    @users = result.to_hash
      @@users = @users
    @category = ActiveRecord::Base.connection.exec_query('Select catname,catid from Category').to_hash
    @company = ActiveRecord::Base.connection.exec_query('Select companyname,companyid from Company').to_hash
    @usertype = ActiveRecord::Base.connection.exec_query('Select usertypename, usertypeid from UserType').to_hash
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
  end

  def sendEmail
    UserMailer.semail(@@users,params[:embody]).deliver_now
    result = ActiveRecord::Base.connection.exec_query(
        'SELECT u.firstname, u.lastname, u.email, u.phone, u.address,
          c.companyname, ca.catname, ut.usertypename FROM SuperDUser u
inner join Company c on c.companyid = u.companyid
inner join Category ca on ca.catid = u.categoryid
inner join UserType ut on ut.usertypeid = u.usertypeid
where ut.usertypeid =' +@@utype + ' and ca.catid='+ @@cat + ' and c.companyid =' + @@comp)
    @users = result.to_hash
    @@users = @users
    @category = ActiveRecord::Base.connection.exec_query('Select catname,catid from Category').to_hash
    @company = ActiveRecord::Base.connection.exec_query('Select companyname,companyid from Company').to_hash
    @usertype = ActiveRecord::Base.connection.exec_query('Select usertypename, usertypeid from UserType').to_hash
    render :index
  end

  def filter
    @@cat = params["catid"]
    @@comp= params["companyid"]
    @@utype= params["usertypeid"]
    result = ActiveRecord::Base.connection.exec_query(
        'SELECT u.firstname, u.lastname, u.email, u.phone, u.address,
          c.companyname, ca.catname, ut.usertypename FROM SuperDUser u
inner join Company c on c.companyid = u.companyid
inner join Category ca on ca.catid = u.categoryid
inner join UserType ut on ut.usertypeid = u.usertypeid
where ut.usertypeid =' +params["usertypeid"] + ' and ca.catid='+ params["catid"] + ' and c.companyid =' + params["companyid"])
    @users = result.to_hash
    @@users = @users
    @category = ActiveRecord::Base.connection.exec_query('Select catname,catid from Category').to_hash
    @company = ActiveRecord::Base.connection.exec_query('Select companyname,companyid from Company').to_hash
    @usertype = ActiveRecord::Base.connection.exec_query('Select usertypename, usertypeid from UserType').to_hash
    render :index
  end
end
