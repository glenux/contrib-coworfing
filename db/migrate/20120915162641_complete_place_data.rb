class CompletePlaceData < ActiveRecord::Migration
	def change
		add_column :places, :contact_name, :string
		add_column :places, :contact_mail, :string, :null => false
		add_column :places, :contact_facebook, :string
		add_column :places, :contact_twitter, :string
		# yes / no / dont-know
		add_column :places, :coworking_visa, :string
		# yes / no / dont-know
		add_column :places, :dropin, :string
		# idea / in-progress / up-and-running
		add_column :places, :progress
	end
end
