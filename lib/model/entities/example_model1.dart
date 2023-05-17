class ExampleModel1 {
  ExampleModel1({
    required this.message,
    required this.status,
    required this.data,
  });
  late final String? message;
  late final int status;
  late final Data data;

  ExampleModel1.fromJson(Map<String?, dynamic> json) {
    message = json['message'];
    status = json['status'];
    data = Data.fromJson(json['data']);
  }

  Map<String?, dynamic> toJson() {
    final _data = <String?, dynamic>{};
    _data['message'] = message;
    _data['status'] = status;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.trendingVideo,
    required this.homeNews,
    required this.homeCates,
  });
  late final List<dynamic> trendingVideo;
  late final List<HomeNews> homeNews;
  late final List<HomeCates> homeCates;

  Data.fromJson(Map<String?, dynamic> json) {
    trendingVideo = List.castFrom<dynamic, dynamic>(json['trending_video']);
    homeNews =
        List.from(json['home_news']).map((e) => HomeNews.fromJson(e)).toList();
    homeCates = List.from(json['home_cates'])
        .map((e) => HomeCates.fromJson(e))
        .toList();
  }

  Map<String?, dynamic> toJson() {
    final _data = <String?, dynamic>{};
    _data['trending_video'] = trendingVideo;
    _data['home_news'] = homeNews.map((e) => e.toJson()).toList();
    _data['home_cates'] = homeCates.map((e) => e.toJson()).toList();
    return _data;
  }
}

class HomeNews {
  HomeNews({
    required this.title,
    required this.moreLink,
    required this.idNews,
    required this.idNewscategory,
    required this.categoryName,
    required this.categoryNameMeta,
    required this.metaTitle,
    required this.descriptionShort,
    required this.imageCover,
    required this.imageType,
    required this.linkRewrite,
    required this.urlLink,
    required this.position,
    required this.pageView,
    required this.trustLove,
    required this.commentNumber,
    required this.actived,
    required this.datePublic,
    required this.dateUpd,
    required this.deleted,
  });
  late final String? title;
  late final String? moreLink;
  late final String? idNews;
  late final String? idNewscategory;
  late final String? categoryName;
  late final String? categoryNameMeta;
  late final String? metaTitle;
  late final String? descriptionShort;
  late final String? imageCover;
  late final String? imageType;
  late final String? linkRewrite;
  late final String? urlLink;
  late final String? position;
  late final String? pageView;
  late final String? trustLove;
  late final String? commentNumber;
  late final String? actived;
  late final String? datePublic;
  late final String? dateUpd;
  late final String? deleted;

  HomeNews.fromJson(Map<String?, dynamic> json) {
    title = json['title'];
    moreLink = json['more_link'];
    idNews = json['id_news'];
    idNewscategory = json['id_newscategory'];
    categoryName = json['category_name'];
    categoryNameMeta = json['category_name_meta'];
    metaTitle = json['meta_title'];
    descriptionShort = json['description_short'];
    imageCover = json['image_cover'];
    imageType = json['image_type'];
    linkRewrite = json['link_rewrite'];
    urlLink = json['url_link'];
    position = json['position'];
    pageView = json['page_view'];
    trustLove = json['trust_love'];
    commentNumber = json['comment_number'];
    actived = json['actived'];
    datePublic = json['date_public'];
    dateUpd = json['date_upd'];
    deleted = json['deleted'];
  }

  Map<String?, dynamic> toJson() {
    final _data = <String?, dynamic>{};
    _data['title'] = title;
    _data['more_link'] = moreLink;
    _data['id_news'] = idNews;
    _data['id_newscategory'] = idNewscategory;
    _data['category_name'] = categoryName;
    _data['category_name_meta'] = categoryNameMeta;
    _data['meta_title'] = metaTitle;
    _data['description_short'] = descriptionShort;
    _data['image_cover'] = imageCover;
    _data['image_type'] = imageType;
    _data['link_rewrite'] = linkRewrite;
    _data['url_link'] = urlLink;
    _data['position'] = position;
    _data['page_view'] = pageView;
    _data['trust_love'] = trustLove;
    _data['comment_number'] = commentNumber;
    _data['actived'] = actived;
    _data['date_public'] = datePublic;
    _data['date_upd'] = dateUpd;
    _data['deleted'] = deleted;
    return _data;
  }
}

class HomeCates {
  HomeCates({
    required this.idNewscategory,
    required this.iconImage,
    required this.categoryName,
    required this.categoryNameMeta,
    required this.linkRewrite,
    required this.position,
    required this.totalNumber,
    required this.commentNumber,
    required this.background,
    required this.borderColor,
    required this.dateAdd,
    required this.dateUpd,
    required this.deleted,
  });
  late final String? idNewscategory;
  late final String? iconImage;
  late final String? categoryName;
  late final String? categoryNameMeta;
  late final String? linkRewrite;
  late final String? position;
  late final String? totalNumber;
  late final String? commentNumber;
  late final String? background;
  late final String? borderColor;
  late final String? dateAdd;
  late final String? dateUpd;
  late final String? deleted;

  HomeCates.fromJson(Map<String?, dynamic> json) {
    idNewscategory = json['id_newscategory'];
    iconImage = json['icon_image'];
    categoryName = json['category_name'];
    categoryNameMeta = json['category_name_meta'];
    linkRewrite = json['link_rewrite'];
    position = json['position'];
    totalNumber = json['total_number'];
    commentNumber = json['comment_number'];
    background = json['background'];
    borderColor = json['border_color'];
    dateAdd = json['date_add'];
    dateUpd = json['date_upd'];
    deleted = json['deleted'];
  }

  Map<String?, dynamic> toJson() {
    final _data = <String?, dynamic>{};
    _data['id_newscategory'] = idNewscategory;
    _data['icon_image'] = iconImage;
    _data['category_name'] = categoryName;
    _data['category_name_meta'] = categoryNameMeta;
    _data['link_rewrite'] = linkRewrite;
    _data['position'] = position;
    _data['total_number'] = totalNumber;
    _data['comment_number'] = commentNumber;
    _data['background'] = background;
    _data['border_color'] = borderColor;
    _data['date_add'] = dateAdd;
    _data['date_upd'] = dateUpd;
    _data['deleted'] = deleted;
    return _data;
  }
}
