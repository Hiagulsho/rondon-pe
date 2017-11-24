class AddBannerToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :banner, :string
  end
end
