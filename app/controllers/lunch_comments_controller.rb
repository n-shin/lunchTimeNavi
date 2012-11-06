class LunchCommentsController < ApplicationController
  # GET /lunch_comments
  # GET /lunch_comments.json
  def index
    @lunch_comments = LunchComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lunch_comments }
    end
  end

  # GET /lunch_comments/1
  # GET /lunch_comments/1.json
  def show
    @lunch_comment = LunchComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lunch_comment }
    end
  end

  # GET /lunch_comments/new
  # GET /lunch_comments/new.json
  def new
    @lunch_comment = LunchComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lunch_comment }
    end
  end

  # GET /lunch_comments/1/edit
  def edit
    @lunch_comment = LunchComment.find(params[:id])
  end

  # POST /lunch_comments
  # POST /lunch_comments.json
  def create
    @lunch_comment = LunchComment.new(params[:lunch_comment])

    respond_to do |format|
      if @lunch_comment.save
        format.html { redirect_to @lunch_comment, notice: 'Lunch comment was successfully created.' }
        format.json { render json: @lunch_comment, status: :created, location: @lunch_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @lunch_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lunch_comments/1
  # PUT /lunch_comments/1.json
  def update
    @lunch_comment = LunchComment.find(params[:id])

    respond_to do |format|
      if @lunch_comment.update_attributes(params[:lunch_comment])
        format.html { redirect_to @lunch_comment, notice: 'Lunch comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lunch_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lunch_comments/1
  # DELETE /lunch_comments/1.json
  def destroy
    @lunch_comment = LunchComment.find(params[:id])
    @lunch_comment.destroy

    respond_to do |format|
      format.html { redirect_to lunch_comments_url }
      format.json { head :no_content }
    end
  end
end