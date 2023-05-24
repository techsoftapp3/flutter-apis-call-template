import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class PostDao {
  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<int> insertPost(Post post);

  @Query("select * From Post")
  Future<List<Post>> getAllPost();

  @Query("select * From Post as p Where p.`id` = :id")
  Future<Post?> getPostsById(int id);

  @Query("select * from Post as p where p.`userId` = :userId ")
  Future<List<Post>> getPostByUserId(int userId);

  @insert
  Future<void> insertListPosts(List<Post> posts);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<int> updatePost(Post post);

  @Query("delete from Post as p where p.`id` = :id")
  Future<int?> deletePostById(int id);

  @Query("delete from Post")
  Future<int?> deletePosts();
}
