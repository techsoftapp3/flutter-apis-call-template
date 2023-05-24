import 'package:api_tools_test/model/cat_image/cat_image.dart';
import 'package:api_tools_test/model/data_source/local/cat_dao.dart';
import 'package:api_tools_test/model/data_source/remote/retrofit/cat_remote.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cat_remote_test.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<CatRemote>(onMissingStub: OnMissingStub.returnDefault)
])
void main() {
  final MockCatRemote mock = MockCatRemote();

  group("Test Cat Remote", () {
    test("Test SELECT CatImage", () {
      when(mock.getImages(
        // limit: anyNamed("1"),
        // order: anyNamed("RAND"),
        // page: anyNamed("1"),
        // breadIds: anyNamed("breeds"),
        // hasBreeds: anyNamed("true"),
        // categoryIds: anyNamed("true"),
        // subId: anyNamed("true"),
        limit: 5,
        order: "RAND",
        page: 1,
        subId: "id",
        categoryIds: "id",
        hasBreeds: true,
        breadIds: "12",
      )).thenAnswer((realInvocation) async => Future.value([CatImage()]));
    });
    expect(
        mock.getImages(
          limit: 5,
          order: "RAND",
          page: 1,
          subId: "id",
          categoryIds: "id",
          hasBreeds: true,
          breadIds: "12",
        ),
        Future.value([CatImage()]));
  });
}
