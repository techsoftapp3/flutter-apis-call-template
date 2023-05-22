import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class PostDao {
  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<void> insertPost(Post post);

  @Query("Select * From Post")
  Future<List<Post>> getAllPost();

  @Query("Select * From Post as p Where p.`id` = :id")
  Future<Post?> getPostsById(int id);

  @insert
  Future<void> insertListPosts(List<Post> posts);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updatePost(Post post);

  @Query("delete from Post as p where p.`id` = :id")
  Future<void> deletePost(int id);

  @Query("select * from Post as p where p.`userId` = :userId ")
  Future<List<Post>> getPostByUserId(int userId);
}
