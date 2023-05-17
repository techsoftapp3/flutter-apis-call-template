class ExampleModel2 {
  ExampleModel2({
    required this.message,
    required this.status,
    required this.data,
  });
  late final String? message;
  late final int status;
  late final DataModel2 data;

  ExampleModel2.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    data = DataModel2.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['status'] = status;
    _data['data'] = data.toJson();
    return _data;
  }
}

class DataModel2 {
  DataModel2({
    required this.suggestSearch,
    required this.discountProducts,
    required this.giftProducts,
    required this.utility,
    required this.flashSale,
    required this.fashionSale,
    required this.coreMenu,
    required this.menu,
  });
  late final List<SuggestSearch> suggestSearch;
  late final List<DiscountProducts> discountProducts;
  late final List<GiftProducts> giftProducts;
  late final List<Utility> utility;
  late final List<FlashSale> flashSale;
  late final List<FashionSale> fashionSale;
  late final List<dynamic> coreMenu;
  late final List<Menu> menu;

  DataModel2.fromJson(Map<String, dynamic> json) {
    suggestSearch = List.from(json['suggest_search'])
        .map((e) => SuggestSearch.fromJson(e))
        .toList();
    discountProducts = List.from(json['discount_products'])
        .map((e) => DiscountProducts.fromJson(e))
        .toList();
    giftProducts = List.from(json['gift_products'])
        .map((e) => GiftProducts.fromJson(e))
        .toList();
    utility =
        List.from(json['utility']).map((e) => Utility.fromJson(e)).toList();
    flashSale = List.from(json['flash_sale'])
        .map((e) => FlashSale.fromJson(e))
        .toList();
    fashionSale = List.from(json['fashion_sale'])
        .map((e) => FashionSale.fromJson(e))
        .toList();
    coreMenu = List.castFrom<dynamic, dynamic>(json['core_menu']);
    menu = List.from(json['menu']).map((e) => Menu.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['suggest_search'] = suggestSearch.map((e) => e.toJson()).toList();
    _data['discount_products'] =
        discountProducts.map((e) => e.toJson()).toList();
    _data['gift_products'] = giftProducts.map((e) => e.toJson()).toList();
    _data['utility'] = utility.map((e) => e.toJson()).toList();
    _data['flash_sale'] = flashSale.map((e) => e.toJson()).toList();
    _data['fashion_sale'] = fashionSale.map((e) => e.toJson()).toList();
    _data['core_menu'] = coreMenu;
    _data['menu'] = menu.map((e) => e.toJson()).toList();
    return _data;
  }
}

class SuggestSearch {
  SuggestSearch({
    required this.idSearchSuggest,
    required this.title,
    required this.imageCover,
    required this.idType,
  });
  late final String? idSearchSuggest;
  late final String? title;
  late final String? imageCover;
  late final String? idType;

  SuggestSearch.fromJson(Map<String, dynamic> json) {
    idSearchSuggest = json['id_search_suggest'];
    title = json['title'];
    imageCover = json['image_cover'];
    idType = json['id_type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_search_suggest'] = idSearchSuggest;
    _data['title'] = title;
    _data['image_cover'] = imageCover;
    _data['id_type'] = idType;
    return _data;
  }
}

class DiscountProducts {
  DiscountProducts({
    required this.idProduct,
    required this.productName,
    required this.imageCover,
    required this.categoryName,
    required this.idPageSegment,
    required this.idRecommendation,
    required this.idCategory,
    required this.reference,
    required this.idManufacturer,
    required this.imageLogo,
    required this.manufactureName,
    required this.urlLink,
    required this.textBuy,
    required this.totalProduct,
    required this.ratingNumber,
    required this.ratingStar,
    required this.showRating,
    required this.quantity,
    required this.textPrice,
    required this.price,
    required this.savePrice,
    required this.realPrice,
    required this.reductionPrice,
    required this.reductionPercent,
    required this.reductionFrom,
    required this.reductionTo,
    required this.promotionId,
    required this.promotionNo,
    required this.haveGift,
    required this.giftContent,
    required this.uiType,
    required this.isShowFilter,
    required this.commentNumber,
    required this.topText,
    required this.middleText,
    required this.centerText,
    required this.bottomText,
    required this.isNewdate,
    required this.eventUid,
    required this.eventUrl,
    required this.referenceGift,
    required this.giftList,
    required this.linkVideo,
    required this.imageThumb,
    required this.thumbWidth,
    required this.thumbHeight,
    required this.imageFrame,
    required this.thumbStart,
    required this.thumbEnd,
    required this.comboId,
    required this.idCategoryErp,
    required this.categoryNameErp,
    required this.comboName,
    required this.typeCombo,
    required this.quantityCombo,
    required this.dateStart,
    required this.dateEnd,
    required this.typeGroup,
    required this.typeShow,
    required this.trustLove,
    required this.isHot,
    required this.isCf,
    required this.typeSale,
    required this.position,
    required this.tableLink,
    required this.totalSales,
    required this.actived,
    required this.isOnline,
    required this.maxNumber,
    required this.stepNumber,
    required this.dealNumber,
    required this.isOutstock,
    required this.isFreeship,
    required this.shipLabel,
    required this.totalBuy,
    required this.dateAdd,
    required this.dateUpd,
    required this.deleted,
    required this.apiPage,
    required this.idPage,
    required this.namePage,
    required this.score,
    required this.imageTop,
  });
  late final String? idProduct;
  late final String? productName;
  late final String? imageCover;
  late final String? categoryName;
  late final String? idPageSegment;
  late final String? idRecommendation;
  late final String? idCategory;
  late final String? reference;
  late final String? idManufacturer;
  late final String? imageLogo;
  late final String? manufactureName;
  late final String? urlLink;
  late final String? textBuy;
  late final String? totalProduct;
  late final String? ratingNumber;
  late final String? ratingStar;
  late final String? showRating;
  late final String? quantity;
  late final String? textPrice;
  late final String? price;
  late final String? savePrice;
  late final String? realPrice;
  late final String? reductionPrice;
  late final String? reductionPercent;
  late final String? reductionFrom;
  late final String? reductionTo;
  late final String? promotionId;
  late final String? promotionNo;
  late final String? haveGift;
  late final String? giftContent;
  late final String? uiType;
  late final String? isShowFilter;
  late final String? commentNumber;
  late final String? topText;
  late final String? middleText;
  late final String? centerText;
  late final String? bottomText;
  late final String? isNewdate;
  late final String? eventUid;
  late final String? eventUrl;
  late final String? referenceGift;
  late final List<GiftList> giftList;
  late final String? linkVideo;
  late final String? imageThumb;
  late final String? thumbWidth;
  late final String? thumbHeight;
  late final String? imageFrame;
  late final String? thumbStart;
  late final String? thumbEnd;
  late final String? comboId;
  late final String? idCategoryErp;
  late final String? categoryNameErp;
  late final String? comboName;
  late final String? typeCombo;
  late final String? quantityCombo;
  late final String? dateStart;
  late final String? dateEnd;
  late final String? typeGroup;
  late final String? typeShow;
  late final String? trustLove;
  late final String? isHot;
  late final String? isCf;
  late final String? typeSale;
  late final String? position;
  late final String? tableLink;
  late final String? totalSales;
  late final String? actived;
  late final String? isOnline;
  late final String? maxNumber;
  late final String? stepNumber;
  late final String? dealNumber;
  late final String? isOutstock;
  late final int isFreeship;
  late final String? shipLabel;
  late final String? totalBuy;
  late final String? dateAdd;
  late final String? dateUpd;
  late final String? deleted;
  late final String? apiPage;
  late final String? idPage;
  late final String? namePage;
  late final String? score;
  late final String? imageTop;

  DiscountProducts.fromJson(Map<String, dynamic> json) {
    idProduct = json['id_product'];
    productName = json['product_name'];
    imageCover = json['image_cover'];
    categoryName = json['category_name'];
    idPageSegment = json['id_page_segment'];
    idRecommendation = json['id_recommendation'];
    idCategory = json['id_category'];
    reference = json['reference'];
    idManufacturer = json['id_manufacturer'];
    imageLogo = json['image_logo'];
    manufactureName = json['manufacture_name'];
    urlLink = json['url_link'];
    textBuy = json['text_buy'];
    totalProduct = json['total_product'];
    ratingNumber = json['rating_number'];
    ratingStar = json['rating_star'];
    showRating = json['show_rating'];
    quantity = json['quantity'];
    textPrice = json['text_price'];
    price = json['price'];
    savePrice = json['save_price'];
    realPrice = json['real_price'];
    reductionPrice = json['reduction_price'];
    reductionPercent = json['reduction_percent'];
    reductionFrom = json['reduction_from'];
    reductionTo = json['reduction_to'];
    promotionId = json['promotion_id'];
    promotionNo = json['promotion_no'];
    haveGift = json['have_gift'];
    giftContent = json['gift_content'];
    uiType = json['ui_type'];
    isShowFilter = json['is_show_filter'];
    commentNumber = json['comment_number'];
    topText = json['top_text'];
    middleText = json['middle_text'];
    centerText = json['center_text'];
    bottomText = json['bottom_text'];
    isNewdate = json['is_newdate'];
    eventUid = json['event_uid'];
    eventUrl = json['event_url'];
    referenceGift = json['reference_gift'];
    giftList =
        List.from(json['gift_list']).map((e) => GiftList.fromJson(e)).toList();
    linkVideo = json['link_video'];
    imageThumb = json['image_thumb'];
    thumbWidth = json['thumb_width'];
    thumbHeight = json['thumb_height'];
    imageFrame = json['image_frame'];
    thumbStart = json['thumb_start'];
    thumbEnd = json['thumb_end'];
    comboId = json['combo_id'];
    idCategoryErp = json['id_category_erp'];
    categoryNameErp = json['category_name_erp'];
    comboName = json['combo_name'];
    typeCombo = json['type_combo'];
    quantityCombo = json['quantity_combo'];
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    typeGroup = json['type_group'];
    typeShow = json['type_show'];
    trustLove = json['trust_love'];
    isHot = json['is_hot'];
    isCf = json['is_cf'];
    typeSale = json['type_sale'];
    position = json['position'];
    tableLink = json['table_link'];
    totalSales = json['total_sales'];
    actived = json['actived'];
    isOnline = json['is_online'];
    maxNumber = json['max_number'];
    stepNumber = json['step_number'];
    dealNumber = json['deal_number'];
    isOutstock = json['is_outstock'];
    isFreeship = json['is_freeship'];
    shipLabel = json['ship_label'];
    totalBuy = json['total_buy'];
    dateAdd = json['date_add'];
    dateUpd = json['date_upd'];
    deleted = json['deleted'];
    apiPage = json['api_page'];
    idPage = json['id_page'];
    namePage = json['name_page'];
    score = json['score'];
    imageTop = json['image_top'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_product'] = idProduct;
    _data['product_name'] = productName;
    _data['image_cover'] = imageCover;
    _data['category_name'] = categoryName;
    _data['id_page_segment'] = idPageSegment;
    _data['id_recommendation'] = idRecommendation;
    _data['id_category'] = idCategory;
    _data['reference'] = reference;
    _data['id_manufacturer'] = idManufacturer;
    _data['image_logo'] = imageLogo;
    _data['manufacture_name'] = manufactureName;
    _data['url_link'] = urlLink;
    _data['text_buy'] = textBuy;
    _data['total_product'] = totalProduct;
    _data['rating_number'] = ratingNumber;
    _data['rating_star'] = ratingStar;
    _data['show_rating'] = showRating;
    _data['quantity'] = quantity;
    _data['text_price'] = textPrice;
    _data['price'] = price;
    _data['save_price'] = savePrice;
    _data['real_price'] = realPrice;
    _data['reduction_price'] = reductionPrice;
    _data['reduction_percent'] = reductionPercent;
    _data['reduction_from'] = reductionFrom;
    _data['reduction_to'] = reductionTo;
    _data['promotion_id'] = promotionId;
    _data['promotion_no'] = promotionNo;
    _data['have_gift'] = haveGift;
    _data['gift_content'] = giftContent;
    _data['ui_type'] = uiType;
    _data['is_show_filter'] = isShowFilter;
    _data['comment_number'] = commentNumber;
    _data['top_text'] = topText;
    _data['middle_text'] = middleText;
    _data['center_text'] = centerText;
    _data['bottom_text'] = bottomText;
    _data['is_newdate'] = isNewdate;
    _data['event_uid'] = eventUid;
    _data['event_url'] = eventUrl;
    _data['reference_gift'] = referenceGift;
    _data['gift_list'] = giftList.map((e) => e.toJson()).toList();
    _data['link_video'] = linkVideo;
    _data['image_thumb'] = imageThumb;
    _data['thumb_width'] = thumbWidth;
    _data['thumb_height'] = thumbHeight;
    _data['image_frame'] = imageFrame;
    _data['thumb_start'] = thumbStart;
    _data['thumb_end'] = thumbEnd;
    _data['combo_id'] = comboId;
    _data['id_category_erp'] = idCategoryErp;
    _data['category_name_erp'] = categoryNameErp;
    _data['combo_name'] = comboName;
    _data['type_combo'] = typeCombo;
    _data['quantity_combo'] = quantityCombo;
    _data['date_start'] = dateStart;
    _data['date_end'] = dateEnd;
    _data['type_group'] = typeGroup;
    _data['type_show'] = typeShow;
    _data['trust_love'] = trustLove;
    _data['is_hot'] = isHot;
    _data['is_cf'] = isCf;
    _data['type_sale'] = typeSale;
    _data['position'] = position;
    _data['table_link'] = tableLink;
    _data['total_sales'] = totalSales;
    _data['actived'] = actived;
    _data['is_online'] = isOnline;
    _data['max_number'] = maxNumber;
    _data['step_number'] = stepNumber;
    _data['deal_number'] = dealNumber;
    _data['is_outstock'] = isOutstock;
    _data['is_freeship'] = isFreeship;
    _data['ship_label'] = shipLabel;
    _data['total_buy'] = totalBuy;
    _data['date_add'] = dateAdd;
    _data['date_upd'] = dateUpd;
    _data['deleted'] = deleted;
    _data['api_page'] = apiPage;
    _data['id_page'] = idPage;
    _data['name_page'] = namePage;
    _data['score'] = score;
    _data['image_top'] = imageTop;
    return _data;
  }
}

class GiftList {
  GiftList({
    required this.idProductGift,
    required this.referenceGift,
    required this.imageCover,
    required this.linkVideo,
  });
  late final String? idProductGift;
  late final String? referenceGift;
  late final String? imageCover;
  late final String? linkVideo;

  GiftList.fromJson(Map<String, dynamic> json) {
    idProductGift = json['id_product_gift'];
    referenceGift = json['reference_gift'];
    imageCover = json['image_cover'];
    linkVideo = json['link_video'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_product_gift'] = idProductGift;
    _data['reference_gift'] = referenceGift;
    _data['image_cover'] = imageCover;
    _data['link_video'] = linkVideo;
    return _data;
  }
}

class GiftProducts {
  GiftProducts({
    required this.idProduct,
    required this.productName,
    required this.imageCover,
    required this.categoryName,
    required this.idPageSegment,
    required this.idRecommendation,
    required this.idCategory,
    required this.reference,
    required this.idManufacturer,
    required this.imageLogo,
    required this.manufactureName,
    required this.urlLink,
    required this.textBuy,
    required this.totalProduct,
    required this.ratingNumber,
    required this.ratingStar,
    required this.showRating,
    required this.quantity,
    required this.textPrice,
    required this.price,
    required this.savePrice,
    required this.realPrice,
    required this.reductionPrice,
    required this.reductionPercent,
    required this.reductionFrom,
    required this.reductionTo,
    required this.promotionId,
    required this.promotionNo,
    required this.haveGift,
    required this.giftContent,
    required this.uiType,
    required this.isShowFilter,
    required this.commentNumber,
    required this.topText,
    required this.middleText,
    required this.centerText,
    required this.bottomText,
    required this.isNewdate,
    required this.eventUid,
    required this.eventUrl,
    required this.referenceGift,
    required this.linkVideo,
    required this.imageThumb,
    required this.thumbWidth,
    required this.thumbHeight,
    required this.imageFrame,
    required this.giftList,
    required this.thumbStart,
    required this.thumbEnd,
    required this.comboId,
    required this.idCategoryErp,
    required this.categoryNameErp,
    required this.comboName,
    required this.typeCombo,
    required this.quantityCombo,
    required this.dateStart,
    required this.dateEnd,
    required this.typeGroup,
    required this.typeShow,
    required this.trustLove,
    required this.isHot,
    required this.isCf,
    required this.typeSale,
    required this.position,
    required this.tableLink,
    required this.totalSales,
    required this.actived,
    required this.isOnline,
    required this.maxNumber,
    required this.stepNumber,
    required this.dealNumber,
    required this.isOutstock,
    required this.isFreeship,
    required this.shipLabel,
    required this.totalBuy,
    required this.dateAdd,
    required this.dateUpd,
    required this.deleted,
    required this.apiPage,
    required this.idPage,
    required this.boxBackground,
    required this.namePage,
    required this.imageTop,
    required this.revenue,
    required this.score,
  });
  late final String? idProduct;
  late final String? productName;
  late final String? imageCover;
  late final String? categoryName;
  late final String? idPageSegment;
  late final String? idRecommendation;
  late final String? idCategory;
  late final String? reference;
  late final String? idManufacturer;
  late final String? imageLogo;
  late final String? manufactureName;
  late final String? urlLink;
  late final String? textBuy;
  late final String? totalProduct;
  late final String? ratingNumber;
  late final String? ratingStar;
  late final String? showRating;
  late final String? quantity;
  late final String? textPrice;
  late final String? price;
  late final String? savePrice;
  late final String? realPrice;
  late final String? reductionPrice;
  late final String? reductionPercent;
  late final String? reductionFrom;
  late final String? reductionTo;
  late final String? promotionId;
  late final String? promotionNo;
  late final String? haveGift;
  late final String? giftContent;
  late final String? uiType;
  late final String? isShowFilter;
  late final String? commentNumber;
  late final String? topText;
  late final String? middleText;
  late final String? centerText;
  late final String? bottomText;
  late final String? isNewdate;
  late final String? eventUid;
  late final String? eventUrl;
  late final String? referenceGift;
  late final String? linkVideo;
  late final String? imageThumb;
  late final String? thumbWidth;
  late final String? thumbHeight;
  late final String? imageFrame;
  late final List<GiftList> giftList;
  late final String? thumbStart;
  late final String? thumbEnd;
  late final String? comboId;
  late final String? idCategoryErp;
  late final String? categoryNameErp;
  late final String? comboName;
  late final String? typeCombo;
  late final String? quantityCombo;
  late final String? dateStart;
  late final String? dateEnd;
  late final String? typeGroup;
  late final String? typeShow;
  late final String? trustLove;
  late final String? isHot;
  late final String? isCf;
  late final String? typeSale;
  late final String? position;
  late final String? tableLink;
  late final String? totalSales;
  late final String? actived;
  late final String? isOnline;
  late final String? maxNumber;
  late final String? stepNumber;
  late final String? dealNumber;
  late final String? isOutstock;
  late final int isFreeship;
  late final String? shipLabel;
  late final String? totalBuy;
  late final String? dateAdd;
  late final String? dateUpd;
  late final String? deleted;
  late final String? apiPage;
  late final String? idPage;
  late final String? boxBackground;
  late final String? namePage;
  late final String? imageTop;
  late final String? revenue;
  late final String? score;

  GiftProducts.fromJson(Map<String, dynamic> json) {
    idProduct = json['id_product'];
    productName = json['product_name'];
    imageCover = json['image_cover'];
    categoryName = json['category_name'];
    idPageSegment = json['id_page_segment'];
    idRecommendation = json['id_recommendation'];
    idCategory = json['id_category'];
    reference = json['reference'];
    idManufacturer = json['id_manufacturer'];
    imageLogo = json['image_logo'];
    manufactureName = json['manufacture_name'];
    urlLink = json['url_link'];
    textBuy = json['text_buy'];
    totalProduct = json['total_product'];
    ratingNumber = json['rating_number'];
    ratingStar = json['rating_star'];
    showRating = json['show_rating'];
    quantity = json['quantity'];
    textPrice = json['text_price'];
    price = json['price'];
    savePrice = json['save_price'];
    realPrice = json['real_price'];
    reductionPrice = json['reduction_price'];
    reductionPercent = json['reduction_percent'];
    reductionFrom = json['reduction_from'];
    reductionTo = json['reduction_to'];
    promotionId = json['promotion_id'];
    promotionNo = json['promotion_no'];
    haveGift = json['have_gift'];
    giftContent = json['gift_content'];
    uiType = json['ui_type'];
    isShowFilter = json['is_show_filter'];
    commentNumber = json['comment_number'];
    topText = json['top_text'];
    middleText = json['middle_text'];
    centerText = json['center_text'];
    bottomText = json['bottom_text'];
    isNewdate = json['is_newdate'];
    eventUid = json['event_uid'];
    eventUrl = json['event_url'];
    referenceGift = json['reference_gift'];
    linkVideo = json['link_video'];
    imageThumb = json['image_thumb'];
    thumbWidth = json['thumb_width'];
    thumbHeight = json['thumb_height'];
    imageFrame = json['image_frame'];
    giftList =
        List.from(json['gift_list']).map((e) => GiftList.fromJson(e)).toList();
    thumbStart = json['thumb_start'];
    thumbEnd = json['thumb_end'];
    comboId = json['combo_id'];
    idCategoryErp = json['id_category_erp'];
    categoryNameErp = json['category_name_erp'];
    comboName = json['combo_name'];
    typeCombo = json['type_combo'];
    quantityCombo = json['quantity_combo'];
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    typeGroup = json['type_group'];
    typeShow = json['type_show'];
    trustLove = json['trust_love'];
    isHot = json['is_hot'];
    isCf = json['is_cf'];
    typeSale = json['type_sale'];
    position = json['position'];
    tableLink = json['table_link'];
    totalSales = json['total_sales'];
    actived = json['actived'];
    isOnline = json['is_online'];
    maxNumber = json['max_number'];
    stepNumber = json['step_number'];
    dealNumber = json['deal_number'];
    isOutstock = json['is_outstock'];
    isFreeship = json['is_freeship'];
    shipLabel = json['ship_label'];
    totalBuy = json['total_buy'];
    dateAdd = json['date_add'];
    dateUpd = json['date_upd'];
    deleted = json['deleted'];
    apiPage = json['api_page'];
    idPage = json['id_page'];
    boxBackground = json['box_background'];
    namePage = json['name_page'];
    imageTop = json['image_top'];
    revenue = json['revenue'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_product'] = idProduct;
    _data['product_name'] = productName;
    _data['image_cover'] = imageCover;
    _data['category_name'] = categoryName;
    _data['id_page_segment'] = idPageSegment;
    _data['id_recommendation'] = idRecommendation;
    _data['id_category'] = idCategory;
    _data['reference'] = reference;
    _data['id_manufacturer'] = idManufacturer;
    _data['image_logo'] = imageLogo;
    _data['manufacture_name'] = manufactureName;
    _data['url_link'] = urlLink;
    _data['text_buy'] = textBuy;
    _data['total_product'] = totalProduct;
    _data['rating_number'] = ratingNumber;
    _data['rating_star'] = ratingStar;
    _data['show_rating'] = showRating;
    _data['quantity'] = quantity;
    _data['text_price'] = textPrice;
    _data['price'] = price;
    _data['save_price'] = savePrice;
    _data['real_price'] = realPrice;
    _data['reduction_price'] = reductionPrice;
    _data['reduction_percent'] = reductionPercent;
    _data['reduction_from'] = reductionFrom;
    _data['reduction_to'] = reductionTo;
    _data['promotion_id'] = promotionId;
    _data['promotion_no'] = promotionNo;
    _data['have_gift'] = haveGift;
    _data['gift_content'] = giftContent;
    _data['ui_type'] = uiType;
    _data['is_show_filter'] = isShowFilter;
    _data['comment_number'] = commentNumber;
    _data['top_text'] = topText;
    _data['middle_text'] = middleText;
    _data['center_text'] = centerText;
    _data['bottom_text'] = bottomText;
    _data['is_newdate'] = isNewdate;
    _data['event_uid'] = eventUid;
    _data['event_url'] = eventUrl;
    _data['reference_gift'] = referenceGift;
    _data['link_video'] = linkVideo;
    _data['image_thumb'] = imageThumb;
    _data['thumb_width'] = thumbWidth;
    _data['thumb_height'] = thumbHeight;
    _data['image_frame'] = imageFrame;
    _data['gift_list'] = giftList.map((e) => e.toJson()).toList();
    _data['thumb_start'] = thumbStart;
    _data['thumb_end'] = thumbEnd;
    _data['combo_id'] = comboId;
    _data['id_category_erp'] = idCategoryErp;
    _data['category_name_erp'] = categoryNameErp;
    _data['combo_name'] = comboName;
    _data['type_combo'] = typeCombo;
    _data['quantity_combo'] = quantityCombo;
    _data['date_start'] = dateStart;
    _data['date_end'] = dateEnd;
    _data['type_group'] = typeGroup;
    _data['type_show'] = typeShow;
    _data['trust_love'] = trustLove;
    _data['is_hot'] = isHot;
    _data['is_cf'] = isCf;
    _data['type_sale'] = typeSale;
    _data['position'] = position;
    _data['table_link'] = tableLink;
    _data['total_sales'] = totalSales;
    _data['actived'] = actived;
    _data['is_online'] = isOnline;
    _data['max_number'] = maxNumber;
    _data['step_number'] = stepNumber;
    _data['deal_number'] = dealNumber;
    _data['is_outstock'] = isOutstock;
    _data['is_freeship'] = isFreeship;
    _data['ship_label'] = shipLabel;
    _data['total_buy'] = totalBuy;
    _data['date_add'] = dateAdd;
    _data['date_upd'] = dateUpd;
    _data['deleted'] = deleted;
    _data['api_page'] = apiPage;
    _data['id_page'] = idPage;
    _data['box_background'] = boxBackground;
    _data['name_page'] = namePage;
    _data['image_top'] = imageTop;
    _data['revenue'] = revenue;
    _data['score'] = score;
    return _data;
  }
}

class Utility {
  Utility({
    required this.idUtility,
    required this.idType,
    required this.utilityName,
    required this.utilityMeta,
    required this.shortName,
    required this.mobileImage,
    required this.position,
    required this.newNumber,
    required this.urlLink,
    required this.idManufacturer,
    required this.idCategory,
    required this.idPromotionList,
    required this.requireLocation,
    required this.apiPage,
    required this.idPage,
  });
  late final String? idUtility;
  late final String? idType;
  late final String? utilityName;
  late final String? utilityMeta;
  late final String? shortName;
  late final String? mobileImage;
  late final String? position;
  late final String? newNumber;
  late final String? urlLink;
  late final String? idManufacturer;
  late final String? idCategory;
  late final String? idPromotionList;
  late final String? requireLocation;
  late final String? apiPage;
  late final String? idPage;

  Utility.fromJson(Map<String, dynamic> json) {
    idUtility = json['id_utility'];
    idType = json['id_type'];
    utilityName = json['utility_name'];
    utilityMeta = json['utility_meta'];
    shortName = json['short_name'];
    mobileImage = json['mobile_image'];
    position = json['position'];
    newNumber = json['new_number'];
    urlLink = json['url_link'];
    idManufacturer = json['id_manufacturer'];
    idCategory = json['id_category'];
    idPromotionList = json['id_promotion_list'];
    requireLocation = json['require_location'];
    apiPage = json['api_page'];
    idPage = json['id_page'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_utility'] = idUtility;
    _data['id_type'] = idType;
    _data['utility_name'] = utilityName;
    _data['utility_meta'] = utilityMeta;
    _data['short_name'] = shortName;
    _data['mobile_image'] = mobileImage;
    _data['position'] = position;
    _data['new_number'] = newNumber;
    _data['url_link'] = urlLink;
    _data['id_manufacturer'] = idManufacturer;
    _data['id_category'] = idCategory;
    _data['id_promotion_list'] = idPromotionList;
    _data['require_location'] = requireLocation;
    _data['api_page'] = apiPage;
    _data['id_page'] = idPage;
    return _data;
  }
}

class FlashSale {
  FlashSale({
    required this.idProduct,
    required this.productName,
    required this.imageCover,
    required this.heightMobile,
    required this.categoryName,
    required this.idPageSegment,
    required this.idRecommendation,
    required this.idCategory,
    required this.reference,
    required this.idManufacturer,
    required this.imageLogo,
    required this.manufactureName,
    required this.urlLink,
    required this.textBuy,
    required this.totalProduct,
    required this.ratingNumber,
    required this.ratingStar,
    required this.showRating,
    required this.quantity,
    required this.textPrice,
    required this.price,
    required this.savePrice,
    required this.realPrice,
    required this.reductionPrice,
    required this.reductionPercent,
    required this.reductionFrom,
    required this.reductionTo,
    required this.promotionId,
    required this.promotionNo,
    required this.haveGift,
    required this.giftContent,
    required this.uiType,
    required this.isShowFilter,
    required this.commentNumber,
    required this.topText,
    required this.middleText,
    required this.centerText,
    required this.bottomText,
    required this.isNewdate,
    required this.eventUid,
    required this.eventUrl,
    required this.referenceGift,
    required this.giftList,
    required this.linkVideo,
    required this.imageThumb,
    required this.thumbWidth,
    required this.thumbHeight,
    required this.imageFrame,
    required this.thumbStart,
    required this.thumbEnd,
    required this.comboId,
    required this.idCategoryErp,
    required this.categoryNameErp,
    required this.comboName,
    required this.typeCombo,
    required this.quantityCombo,
    required this.dateStart,
    required this.dateEnd,
    required this.typeGroup,
    required this.typeShow,
    required this.trustLove,
    required this.isHot,
    required this.isCf,
    required this.typeSale,
    required this.position,
    required this.tableLink,
    required this.totalSales,
    required this.actived,
    required this.isOnline,
    required this.maxNumber,
    required this.stepNumber,
    required this.dealNumber,
    required this.isOutstock,
    required this.isFreeship,
    required this.shipLabel,
    required this.totalBuy,
    required this.dateAdd,
    required this.dateUpd,
    required this.deleted,
    required this.apiPage,
    required this.idPage,
    required this.namePage,
    required this.score,
    required this.imageTop,
  });
  late final String? idProduct;
  late final String? productName;
  late final String? imageCover;
  late final String? heightMobile;
  late final String? categoryName;
  late final String? idPageSegment;
  late final String? idRecommendation;
  late final String? idCategory;
  late final String? reference;
  late final String? idManufacturer;
  late final String? imageLogo;
  late final String? manufactureName;
  late final String? urlLink;
  late final String? textBuy;
  late final String? totalProduct;
  late final String? ratingNumber;
  late final String? ratingStar;
  late final String? showRating;
  late final String? quantity;
  late final String? textPrice;
  late final String? price;
  late final String? savePrice;
  late final String? realPrice;
  late final String? reductionPrice;
  late final String? reductionPercent;
  late final String? reductionFrom;
  late final String? reductionTo;
  late final String? promotionId;
  late final String? promotionNo;
  late final String? haveGift;
  late final String? giftContent;
  late final String? uiType;
  late final String? isShowFilter;
  late final String? commentNumber;
  late final String? topText;
  late final String? middleText;
  late final String? centerText;
  late final String? bottomText;
  late final String? isNewdate;
  late final String? eventUid;
  late final String? eventUrl;
  late final String? referenceGift;
  late final List<GiftList> giftList;
  late final String? linkVideo;
  late final String? imageThumb;
  late final String? thumbWidth;
  late final String? thumbHeight;
  late final String? imageFrame;
  late final String? thumbStart;
  late final String? thumbEnd;
  late final String? comboId;
  late final String? idCategoryErp;
  late final String? categoryNameErp;
  late final String? comboName;
  late final String? typeCombo;
  late final String? quantityCombo;
  late final String? dateStart;
  late final String? dateEnd;
  late final String? typeGroup;
  late final String? typeShow;
  late final String? trustLove;
  late final String? isHot;
  late final String? isCf;
  late final String? typeSale;
  late final String? position;
  late final String? tableLink;
  late final String? totalSales;
  late final String? actived;
  late final String? isOnline;
  late final String? maxNumber;
  late final String? stepNumber;
  late final String? dealNumber;
  late final String? isOutstock;
  late final int isFreeship;
  late final String? shipLabel;
  late final String? totalBuy;
  late final String? dateAdd;
  late final String? dateUpd;
  late final String? deleted;
  late final String? apiPage;
  late final String? idPage;
  late final String? namePage;
  late final String? score;
  late final String? imageTop;

  FlashSale.fromJson(Map<String, dynamic> json) {
    idProduct = json['id_product'];
    productName = json['product_name'];
    imageCover = json['image_cover'];
    heightMobile = json['height_mobile'];
    categoryName = json['category_name'];
    idPageSegment = json['id_page_segment'];
    idRecommendation = json['id_recommendation'];
    idCategory = json['id_category'];
    reference = json['reference'];
    idManufacturer = json['id_manufacturer'];
    imageLogo = json['image_logo'];
    manufactureName = json['manufacture_name'];
    urlLink = json['url_link'];
    textBuy = json['text_buy'];
    totalProduct = json['total_product'];
    ratingNumber = json['rating_number'];
    ratingStar = json['rating_star'];
    showRating = json['show_rating'];
    quantity = json['quantity'];
    textPrice = json['text_price'];
    price = json['price'];
    savePrice = json['save_price'];
    realPrice = json['real_price'];
    reductionPrice = json['reduction_price'];
    reductionPercent = json['reduction_percent'];
    reductionFrom = json['reduction_from'];
    reductionTo = json['reduction_to'];
    promotionId = json['promotion_id'];
    promotionNo = json['promotion_no'];
    haveGift = json['have_gift'];
    giftContent = json['gift_content'];
    uiType = json['ui_type'];
    isShowFilter = json['is_show_filter'];
    commentNumber = json['comment_number'];
    topText = json['top_text'];
    middleText = json['middle_text'];
    centerText = json['center_text'];
    bottomText = json['bottom_text'];
    isNewdate = json['is_newdate'];
    eventUid = json['event_uid'];
    eventUrl = json['event_url'];
    referenceGift = json['reference_gift'];
    giftList =
        List.from(json['gift_list']).map((e) => GiftList.fromJson(e)).toList();
    linkVideo = json['link_video'];
    imageThumb = json['image_thumb'];
    thumbWidth = json['thumb_width'];
    thumbHeight = json['thumb_height'];
    imageFrame = json['image_frame'];
    thumbStart = json['thumb_start'];
    thumbEnd = json['thumb_end'];
    comboId = json['combo_id'];
    idCategoryErp = json['id_category_erp'];
    categoryNameErp = json['category_name_erp'];
    comboName = json['combo_name'];
    typeCombo = json['type_combo'];
    quantityCombo = json['quantity_combo'];
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    typeGroup = json['type_group'];
    typeShow = json['type_show'];
    trustLove = json['trust_love'];
    isHot = json['is_hot'];
    isCf = json['is_cf'];
    typeSale = json['type_sale'];
    position = json['position'];
    tableLink = json['table_link'];
    totalSales = json['total_sales'];
    actived = json['actived'];
    isOnline = json['is_online'];
    maxNumber = json['max_number'];
    stepNumber = json['step_number'];
    dealNumber = json['deal_number'];
    isOutstock = json['is_outstock'];
    isFreeship = json['is_freeship'];
    shipLabel = json['ship_label'];
    totalBuy = json['total_buy'];
    dateAdd = json['date_add'];
    dateUpd = json['date_upd'];
    deleted = json['deleted'];
    apiPage = json['api_page'];
    idPage = json['id_page'];
    namePage = json['name_page'];
    score = json['score'];
    imageTop = json['image_top'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_product'] = idProduct;
    _data['product_name'] = productName;
    _data['image_cover'] = imageCover;
    _data['height_mobile'] = heightMobile;
    _data['category_name'] = categoryName;
    _data['id_page_segment'] = idPageSegment;
    _data['id_recommendation'] = idRecommendation;
    _data['id_category'] = idCategory;
    _data['reference'] = reference;
    _data['id_manufacturer'] = idManufacturer;
    _data['image_logo'] = imageLogo;
    _data['manufacture_name'] = manufactureName;
    _data['url_link'] = urlLink;
    _data['text_buy'] = textBuy;
    _data['total_product'] = totalProduct;
    _data['rating_number'] = ratingNumber;
    _data['rating_star'] = ratingStar;
    _data['show_rating'] = showRating;
    _data['quantity'] = quantity;
    _data['text_price'] = textPrice;
    _data['price'] = price;
    _data['save_price'] = savePrice;
    _data['real_price'] = realPrice;
    _data['reduction_price'] = reductionPrice;
    _data['reduction_percent'] = reductionPercent;
    _data['reduction_from'] = reductionFrom;
    _data['reduction_to'] = reductionTo;
    _data['promotion_id'] = promotionId;
    _data['promotion_no'] = promotionNo;
    _data['have_gift'] = haveGift;
    _data['gift_content'] = giftContent;
    _data['ui_type'] = uiType;
    _data['is_show_filter'] = isShowFilter;
    _data['comment_number'] = commentNumber;
    _data['top_text'] = topText;
    _data['middle_text'] = middleText;
    _data['center_text'] = centerText;
    _data['bottom_text'] = bottomText;
    _data['is_newdate'] = isNewdate;
    _data['event_uid'] = eventUid;
    _data['event_url'] = eventUrl;
    _data['reference_gift'] = referenceGift;
    _data['gift_list'] = giftList.map((e) => e.toJson()).toList();
    _data['link_video'] = linkVideo;
    _data['image_thumb'] = imageThumb;
    _data['thumb_width'] = thumbWidth;
    _data['thumb_height'] = thumbHeight;
    _data['image_frame'] = imageFrame;
    _data['thumb_start'] = thumbStart;
    _data['thumb_end'] = thumbEnd;
    _data['combo_id'] = comboId;
    _data['id_category_erp'] = idCategoryErp;
    _data['category_name_erp'] = categoryNameErp;
    _data['combo_name'] = comboName;
    _data['type_combo'] = typeCombo;
    _data['quantity_combo'] = quantityCombo;
    _data['date_start'] = dateStart;
    _data['date_end'] = dateEnd;
    _data['type_group'] = typeGroup;
    _data['type_show'] = typeShow;
    _data['trust_love'] = trustLove;
    _data['is_hot'] = isHot;
    _data['is_cf'] = isCf;
    _data['type_sale'] = typeSale;
    _data['position'] = position;
    _data['table_link'] = tableLink;
    _data['total_sales'] = totalSales;
    _data['actived'] = actived;
    _data['is_online'] = isOnline;
    _data['max_number'] = maxNumber;
    _data['step_number'] = stepNumber;
    _data['deal_number'] = dealNumber;
    _data['is_outstock'] = isOutstock;
    _data['is_freeship'] = isFreeship;
    _data['ship_label'] = shipLabel;
    _data['total_buy'] = totalBuy;
    _data['date_add'] = dateAdd;
    _data['date_upd'] = dateUpd;
    _data['deleted'] = deleted;
    _data['api_page'] = apiPage;
    _data['id_page'] = idPage;
    _data['name_page'] = namePage;
    _data['score'] = score;
    _data['image_top'] = imageTop;
    return _data;
  }
}

class FashionSale {
  FashionSale({
    required this.idProduct,
    required this.productName,
    required this.imageCover,
    required this.heightMobile,
    required this.categoryName,
    required this.idPageSegment,
    required this.idRecommendation,
    required this.idCategory,
    required this.reference,
    required this.idManufacturer,
    required this.imageLogo,
    required this.manufactureName,
    required this.urlLink,
    required this.textBuy,
    required this.totalProduct,
    required this.ratingNumber,
    required this.ratingStar,
    required this.showRating,
    required this.quantity,
    required this.textPrice,
    required this.price,
    required this.savePrice,
    required this.realPrice,
    required this.reductionPrice,
    required this.reductionPercent,
    required this.reductionFrom,
    required this.reductionTo,
    required this.promotionId,
    required this.promotionNo,
    required this.haveGift,
    required this.giftContent,
    required this.uiType,
    required this.isShowFilter,
    required this.commentNumber,
    required this.topText,
    required this.middleText,
    required this.centerText,
    required this.bottomText,
    required this.isNewdate,
    required this.eventUid,
    required this.eventUrl,
    required this.referenceGift,
    required this.giftList,
    required this.linkVideo,
    required this.imageThumb,
    required this.thumbWidth,
    required this.thumbHeight,
    required this.imageFrame,
    required this.thumbStart,
    required this.thumbEnd,
    required this.comboId,
    required this.idCategoryErp,
    required this.categoryNameErp,
    required this.comboName,
    required this.typeCombo,
    required this.quantityCombo,
    required this.dateStart,
    required this.dateEnd,
    required this.typeGroup,
    required this.typeShow,
    required this.trustLove,
    required this.isHot,
    required this.isCf,
    required this.typeSale,
    required this.position,
    required this.tableLink,
    required this.totalSales,
    required this.actived,
    required this.isOnline,
    required this.maxNumber,
    required this.stepNumber,
    required this.dealNumber,
    required this.isOutstock,
    required this.isFreeship,
    required this.shipLabel,
    required this.totalBuy,
    required this.dateAdd,
    required this.dateUpd,
    required this.deleted,
    required this.apiPage,
    required this.idPage,
    required this.namePage,
    required this.boxTitle,
    required this.boxColor,
    required this.boxMore,
    required this.boxBackground,
    required this.score,
    required this.imageTop,
  });
  late final String? idProduct;
  late final String? productName;
  late final String? imageCover;
  late final String? heightMobile;
  late final String? categoryName;
  late final String? idPageSegment;
  late final String? idRecommendation;
  late final String? idCategory;
  late final String? reference;
  late final String? idManufacturer;
  late final String? imageLogo;
  late final String? manufactureName;
  late final String? urlLink;
  late final String? textBuy;
  late final String? totalProduct;
  late final String? ratingNumber;
  late final String? ratingStar;
  late final String? showRating;
  late final String? quantity;
  late final String? textPrice;
  late final String? price;
  late final String? savePrice;
  late final String? realPrice;
  late final String? reductionPrice;
  late final String? reductionPercent;
  late final String? reductionFrom;
  late final String? reductionTo;
  late final String? promotionId;
  late final String? promotionNo;
  late final String? haveGift;
  late final String? giftContent;
  late final String? uiType;
  late final String? isShowFilter;
  late final String? commentNumber;
  late final String? topText;
  late final String? middleText;
  late final String? centerText;
  late final String? bottomText;
  late final String? isNewdate;
  late final String? eventUid;
  late final String? eventUrl;
  late final String? referenceGift;
  late final List<dynamic> giftList;
  late final String? linkVideo;
  late final String? imageThumb;
  late final String? thumbWidth;
  late final String? thumbHeight;
  late final String? imageFrame;
  late final String? thumbStart;
  late final String? thumbEnd;
  late final String? comboId;
  late final String? idCategoryErp;
  late final String? categoryNameErp;
  late final String? comboName;
  late final String? typeCombo;
  late final String? quantityCombo;
  late final String? dateStart;
  late final String? dateEnd;
  late final String? typeGroup;
  late final String? typeShow;
  late final String? trustLove;
  late final String? isHot;
  late final String? isCf;
  late final String? typeSale;
  late final String? position;
  late final String? tableLink;
  late final String? totalSales;
  late final String? actived;
  late final String? isOnline;
  late final String? maxNumber;
  late final String? stepNumber;
  late final String? dealNumber;
  late final String? isOutstock;
  late final int isFreeship;
  late final String? shipLabel;
  late final String? totalBuy;
  late final String? dateAdd;
  late final String? dateUpd;
  late final String? deleted;
  late final String? apiPage;
  late final String? idPage;
  late final String? namePage;
  late final String? boxTitle;
  late final String? boxColor;
  late final String? boxMore;
  late final String? boxBackground;
  late final String? score;
  late final String? imageTop;

  FashionSale.fromJson(Map<String, dynamic> json) {
    idProduct = json['id_product'];
    productName = json['product_name'];
    imageCover = json['image_cover'];
    heightMobile = json['height_mobile'];
    categoryName = json['category_name'];
    idPageSegment = json['id_page_segment'];
    idRecommendation = json['id_recommendation'];
    idCategory = json['id_category'];
    reference = json['reference'];
    idManufacturer = json['id_manufacturer'];
    imageLogo = json['image_logo'];
    manufactureName = json['manufacture_name'];
    urlLink = json['url_link'];
    textBuy = json['text_buy'];
    totalProduct = json['total_product'];
    ratingNumber = json['rating_number'];
    ratingStar = json['rating_star'];
    showRating = json['show_rating'];
    quantity = json['quantity'];
    textPrice = json['text_price'];
    price = json['price'];
    savePrice = json['save_price'];
    realPrice = json['real_price'];
    reductionPrice = json['reduction_price'];
    reductionPercent = json['reduction_percent'];
    reductionFrom = json['reduction_from'];
    reductionTo = json['reduction_to'];
    promotionId = json['promotion_id'];
    promotionNo = json['promotion_no'];
    haveGift = json['have_gift'];
    giftContent = json['gift_content'];
    uiType = json['ui_type'];
    isShowFilter = json['is_show_filter'];
    commentNumber = json['comment_number'];
    topText = json['top_text'];
    middleText = json['middle_text'];
    centerText = json['center_text'];
    bottomText = json['bottom_text'];
    isNewdate = json['is_newdate'];
    eventUid = json['event_uid'];
    eventUrl = json['event_url'];
    referenceGift = json['reference_gift'];
    giftList = List.castFrom<dynamic, dynamic>(json['gift_list']);
    linkVideo = json['link_video'];
    imageThumb = json['image_thumb'];
    thumbWidth = json['thumb_width'];
    thumbHeight = json['thumb_height'];
    imageFrame = json['image_frame'];
    thumbStart = json['thumb_start'];
    thumbEnd = json['thumb_end'];
    comboId = json['combo_id'];
    idCategoryErp = json['id_category_erp'];
    categoryNameErp = json['category_name_erp'];
    comboName = json['combo_name'];
    typeCombo = json['type_combo'];
    quantityCombo = json['quantity_combo'];
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    typeGroup = json['type_group'];
    typeShow = json['type_show'];
    trustLove = json['trust_love'];
    isHot = json['is_hot'];
    isCf = json['is_cf'];
    typeSale = json['type_sale'];
    position = json['position'];
    tableLink = json['table_link'];
    totalSales = json['total_sales'];
    actived = json['actived'];
    isOnline = json['is_online'];
    maxNumber = json['max_number'];
    stepNumber = json['step_number'];
    dealNumber = json['deal_number'];
    isOutstock = json['is_outstock'];
    isFreeship = json['is_freeship'];
    shipLabel = json['ship_label'];
    totalBuy = json['total_buy'];
    dateAdd = json['date_add'];
    dateUpd = json['date_upd'];
    deleted = json['deleted'];
    apiPage = json['api_page'];
    idPage = json['id_page'];
    namePage = json['name_page'];
    boxTitle = json['box_title'];
    boxColor = json['box_color'];
    boxMore = json['box_more'];
    boxBackground = json['box_background'];
    score = json['score'];
    imageTop = json['image_top'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_product'] = idProduct;
    _data['product_name'] = productName;
    _data['image_cover'] = imageCover;
    _data['height_mobile'] = heightMobile;
    _data['category_name'] = categoryName;
    _data['id_page_segment'] = idPageSegment;
    _data['id_recommendation'] = idRecommendation;
    _data['id_category'] = idCategory;
    _data['reference'] = reference;
    _data['id_manufacturer'] = idManufacturer;
    _data['image_logo'] = imageLogo;
    _data['manufacture_name'] = manufactureName;
    _data['url_link'] = urlLink;
    _data['text_buy'] = textBuy;
    _data['total_product'] = totalProduct;
    _data['rating_number'] = ratingNumber;
    _data['rating_star'] = ratingStar;
    _data['show_rating'] = showRating;
    _data['quantity'] = quantity;
    _data['text_price'] = textPrice;
    _data['price'] = price;
    _data['save_price'] = savePrice;
    _data['real_price'] = realPrice;
    _data['reduction_price'] = reductionPrice;
    _data['reduction_percent'] = reductionPercent;
    _data['reduction_from'] = reductionFrom;
    _data['reduction_to'] = reductionTo;
    _data['promotion_id'] = promotionId;
    _data['promotion_no'] = promotionNo;
    _data['have_gift'] = haveGift;
    _data['gift_content'] = giftContent;
    _data['ui_type'] = uiType;
    _data['is_show_filter'] = isShowFilter;
    _data['comment_number'] = commentNumber;
    _data['top_text'] = topText;
    _data['middle_text'] = middleText;
    _data['center_text'] = centerText;
    _data['bottom_text'] = bottomText;
    _data['is_newdate'] = isNewdate;
    _data['event_uid'] = eventUid;
    _data['event_url'] = eventUrl;
    _data['reference_gift'] = referenceGift;
    _data['gift_list'] = giftList;
    _data['link_video'] = linkVideo;
    _data['image_thumb'] = imageThumb;
    _data['thumb_width'] = thumbWidth;
    _data['thumb_height'] = thumbHeight;
    _data['image_frame'] = imageFrame;
    _data['thumb_start'] = thumbStart;
    _data['thumb_end'] = thumbEnd;
    _data['combo_id'] = comboId;
    _data['id_category_erp'] = idCategoryErp;
    _data['category_name_erp'] = categoryNameErp;
    _data['combo_name'] = comboName;
    _data['type_combo'] = typeCombo;
    _data['quantity_combo'] = quantityCombo;
    _data['date_start'] = dateStart;
    _data['date_end'] = dateEnd;
    _data['type_group'] = typeGroup;
    _data['type_show'] = typeShow;
    _data['trust_love'] = trustLove;
    _data['is_hot'] = isHot;
    _data['is_cf'] = isCf;
    _data['type_sale'] = typeSale;
    _data['position'] = position;
    _data['table_link'] = tableLink;
    _data['total_sales'] = totalSales;
    _data['actived'] = actived;
    _data['is_online'] = isOnline;
    _data['max_number'] = maxNumber;
    _data['step_number'] = stepNumber;
    _data['deal_number'] = dealNumber;
    _data['is_outstock'] = isOutstock;
    _data['is_freeship'] = isFreeship;
    _data['ship_label'] = shipLabel;
    _data['total_buy'] = totalBuy;
    _data['date_add'] = dateAdd;
    _data['date_upd'] = dateUpd;
    _data['deleted'] = deleted;
    _data['api_page'] = apiPage;
    _data['id_page'] = idPage;
    _data['name_page'] = namePage;
    _data['box_title'] = boxTitle;
    _data['box_color'] = boxColor;
    _data['box_more'] = boxMore;
    _data['box_background'] = boxBackground;
    _data['score'] = score;
    _data['image_top'] = imageTop;
    return _data;
  }
}

class Menu {
  Menu({
    required this.idMenu,
    required this.idCategory,
    required this.searchHint,
    required this.idManufacturer,
    required this.idMenuParent,
    required this.menuName,
    required this.menuMeta,
    required this.idCategoryProduct,
    required this.idManufacturerProduct,
    required this.menuImage,
    required this.widthImage,
    required this.heightImage,
    required this.menuColor,
    required this.menuTextColor,
    required this.idMenuHome,
    required this.menuType,
    required this.menuSize,
    required this.isShowLogo,
    required this.isFeatureActive,
    required this.blockSize,
    required this.idLevel,
    required this.haveChild,
    required this.position,
    required this.positionZig,
    required this.isHot,
    required this.hotPosition,
    required this.hotPositionZig,
    required this.isBold,
    required this.isHome,
    required this.homePosition,
    required this.homePositionZig,
    required this.urlLink,
    required this.dateUpd,
    required this.actived,
    required this.deleted,
    required this.categoryName,
    this.name,
    required this.tableLink,
    required this.tableSize,
    required this.apiPage,
    required this.idPage,
    required this.namePage,
  });
  late final String? idMenu;
  late final String? idCategory;
  late final String? searchHint;
  late final String? idManufacturer;
  late final String? idMenuParent;
  late final String? menuName;
  late final String? menuMeta;
  late final String? idCategoryProduct;
  late final String? idManufacturerProduct;
  late final String? menuImage;
  late final String? widthImage;
  late final String? heightImage;
  late final String? menuColor;
  late final String? menuTextColor;
  late final String? idMenuHome;
  late final String? menuType;
  late final String? menuSize;
  late final String? isShowLogo;
  late final String? isFeatureActive;
  late final String? blockSize;
  late final String? idLevel;
  late final String? haveChild;
  late final String? position;
  late final String? positionZig;
  late final String? isHot;
  late final String? hotPosition;
  late final String? hotPositionZig;
  late final String? isBold;
  late final String? isHome;
  late final String? homePosition;
  late final String? homePositionZig;
  late final String? urlLink;
  late final String? dateUpd;
  late final String? actived;
  late final String? deleted;
  late final String? categoryName;
  late final String? name;
  late final String? tableLink;
  late final String? tableSize;
  late final String? apiPage;
  late final String? idPage;
  late final String? namePage;

  Menu.fromJson(Map<String, dynamic> json) {
    idMenu = json['id_menu'];
    idCategory = json['id_category'];
    searchHint = json['search_hint'];
    idManufacturer = json['id_manufacturer'];
    idMenuParent = json['id_menu_parent'];
    menuName = json['menu_name'];
    menuMeta = json['menu_meta'];
    idCategoryProduct = json['id_category_product'];
    idManufacturerProduct = json['id_manufacturer_product'];
    menuImage = json['menu_image'];
    widthImage = json['width_image'];
    heightImage = json['height_image'];
    menuColor = json['menu_color'];
    menuTextColor = json['menu_text_color'];
    idMenuHome = json['id_menu_home'];
    menuType = json['menu_type'];
    menuSize = json['menu_size'];
    isShowLogo = json['is_show_logo'];
    isFeatureActive = json['is_feature_active'];
    blockSize = json['block_size'];
    idLevel = json['id_level'];
    haveChild = json['have_child'];
    position = json['position'];
    positionZig = json['position_zig'];
    isHot = json['is_hot'];
    hotPosition = json['hot_position'];
    hotPositionZig = json['hot_position_zig'];
    isBold = json['is_bold'];
    isHome = json['is_home'];
    homePosition = json['home_position'];
    homePositionZig = json['home_position_zig'];
    urlLink = json['url_link'];
    dateUpd = json['date_upd'];
    actived = json['actived'];
    deleted = json['deleted'];
    categoryName = json['category_name'];
    name = null;
    tableLink = json['table_link'];
    tableSize = json['table_size'];
    apiPage = json['api_page'];
    idPage = json['id_page'];
    namePage = json['name_page'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_menu'] = idMenu;
    _data['id_category'] = idCategory;
    _data['search_hint'] = searchHint;
    _data['id_manufacturer'] = idManufacturer;
    _data['id_menu_parent'] = idMenuParent;
    _data['menu_name'] = menuName;
    _data['menu_meta'] = menuMeta;
    _data['id_category_product'] = idCategoryProduct;
    _data['id_manufacturer_product'] = idManufacturerProduct;
    _data['menu_image'] = menuImage;
    _data['width_image'] = widthImage;
    _data['height_image'] = heightImage;
    _data['menu_color'] = menuColor;
    _data['menu_text_color'] = menuTextColor;
    _data['id_menu_home'] = idMenuHome;
    _data['menu_type'] = menuType;
    _data['menu_size'] = menuSize;
    _data['is_show_logo'] = isShowLogo;
    _data['is_feature_active'] = isFeatureActive;
    _data['block_size'] = blockSize;
    _data['id_level'] = idLevel;
    _data['have_child'] = haveChild;
    _data['position'] = position;
    _data['position_zig'] = positionZig;
    _data['is_hot'] = isHot;
    _data['hot_position'] = hotPosition;
    _data['hot_position_zig'] = hotPositionZig;
    _data['is_bold'] = isBold;
    _data['is_home'] = isHome;
    _data['home_position'] = homePosition;
    _data['home_position_zig'] = homePositionZig;
    _data['url_link'] = urlLink;
    _data['date_upd'] = dateUpd;
    _data['actived'] = actived;
    _data['deleted'] = deleted;
    _data['category_name'] = categoryName;
    _data['name'] = name;
    _data['table_link'] = tableLink;
    _data['table_size'] = tableSize;
    _data['api_page'] = apiPage;
    _data['id_page'] = idPage;
    _data['name_page'] = namePage;
    return _data;
  }
}
