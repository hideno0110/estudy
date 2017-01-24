class LikesController < ApplicationController
  def like
    article = Article.find(params[:article_id])
    # 変数likeに、current_userとbuildを用いてLikeインスタンスを代入してください
    like = current_user.likes.build(article_id: article.id)
    # saveメソッドで、likeを保存してください
    like.save

    redirect_to article
  end
  
  def unlike 
    article = Article.find(params[:article_id])
    # 変数likeに、current_userとfind_byを用いてLikeインスタンスを代入してください
    like = current_user.likes.find_by(article_id: article.id)
    # destroyメソッドで、likeを削除してください
    like.destroy 
    redirect_to article
  end
end
