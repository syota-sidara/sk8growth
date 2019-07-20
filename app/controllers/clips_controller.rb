class ClipsController < ApplicationController
	def index
		@search = Clip.ransack(params[:q])
		if params[:q]
		  @clips = @search.result.page(params[:page]).per(12)
		else
		  @clips = Clip.all.order(created_at: :desc).page(params[:page]).per(12)
		end
	end

	def show
		@clip = Clip.find(params[:id])
		@user = User.find_by(id: @clip.user_id)
        @comment = Comment.new
        impressionist(@clip, nil )
	end

	def new
		@clip = Clip.new
	end

	def create
		@clip = Clip.new(clip_params)
		@clip.user_id = current_user.id
		if @clip.save
		   flash[:notice] = "追加しました"
		   redirect_to clips_path
		else
			render :new
		end
	end

	def edit
		@clip = Clip.find(params[:id])
		if current_user.id != @clip.user.id
			redirect_to clips_path
		end
	end

	def update
		@clip = Clip.find(params[:id])
		@clip.user_id = current_user.id
		if @clip.update(clip_params)
		　　flash[:notice] = "更新しました"
		   redirect_to clip_path
		else
			render :edit
		end
	end

	

	def destroy
		@clip = Clip.find(params[:id])
		if @clip.destroy
		   flash[:notice]
		   redirect_to clips_path
		end
	end

	





    private

    def clip_params
    	params.require(:clip).permit(:title, :video, :body, :trick_id)
    end
end
