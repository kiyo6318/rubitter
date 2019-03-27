module RubeetsHelper
	def choose_new_or_edit
		if action_name == 'new' || action_name == 'confirm'
			confirm_rubeets_path
		elsif action_name == 'edit'
			rubeet_path
		end
	end
end