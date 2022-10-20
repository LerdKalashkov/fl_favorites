import 'dart:convert';

class Gifs {
  Gifs({
    required this.data,
  });

  final List<Datum> data;

  factory Gifs.fromJson(String str) => Gifs.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Gifs.fromMap(Map<String, dynamic> json) => Gifs(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Datum {
  Datum({
    this.type,
    this.id,
    this.url,
    this.slug,
    this.bitlyGifUrl,
    this.bitlyUrl,
    this.embedUrl,
    this.username,
    this.source,
    this.title,
    // this.rating,
    this.contentUrl,
    this.sourceTld,
    this.sourcePostUrl,
    this.isSticker,
    this.importDatetime,
    this.trendingDatetime,
    required this.images,
    this.user,
    this.analyticsResponsePayload,
    this.analytics,
    this.cta,
  });

  final Type? type;
  String? id;
  String? url;
  final String? slug;
  final String? bitlyGifUrl;
  final String? bitlyUrl;
  final String? embedUrl;
  final String? username;
  final String? source;
  String? title;
  // final Rating? rating;
  final String? contentUrl;
  final String? sourceTld;
  final String? sourcePostUrl;
  final int? isSticker;
  final DateTime? importDatetime;
  final String? trendingDatetime;
  Images images;
  final User? user;
  final String? analyticsResponsePayload;
  final Analytics? analytics;
  final Cta? cta;

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
      url: json["url"],
      title: json["title"],
      id: json["id"],
      images: Images.fromMap(json["images"]));

  Map<String, dynamic> toMap() => {
        // "type": typeValues.reverse[type],
        "id": id,
        "url": url,
        "slug": slug,
        "bitly_gif_url": bitlyGifUrl,
        "bitly_url": bitlyUrl,
        "embed_url": embedUrl,
        "username": username,
        "source": source,
        "title": title,
        // "rating": ratingValues.reverse[rating],
        "content_url": contentUrl,
        "source_tld": sourceTld,
        "source_post_url": sourcePostUrl,
        "is_sticker": isSticker,
        "import_datetime": importDatetime?.toIso8601String(),
        "trending_datetime": trendingDatetime,
        "images": images.toMap(),
        "user": user?.toMap(),
        "analytics_response_payload": analyticsResponsePayload,
        "analytics": analytics?.toMap(),
        "cta": cta,
      };
}

class Analytics {
  Analytics({
    this.onload,
    this.onclick,
    this.onsent,
  });

  final Onclick? onload;
  final Onclick? onclick;
  final Onclick? onsent;

  factory Analytics.fromJson(String str) => Analytics.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Analytics.fromMap(Map<String, dynamic> json) => Analytics(
        onload: Onclick.fromMap(json["onload"]),
        onclick: Onclick.fromMap(json["onclick"]),
        onsent: Onclick.fromMap(json["onsent"]),
      );

  Map<String, dynamic> toMap() => {
        "onload": onload?.toMap(),
        "onclick": onclick?.toMap(),
        "onsent": onsent?.toMap(),
      };
}

class Onclick {
  Onclick({
    required this.url,
  });

  final String url;

  factory Onclick.fromJson(String str) => Onclick.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Onclick.fromMap(Map<String, dynamic> json) => Onclick(
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "url": url,
      };
}

class Cta {
  Cta({
    this.link,
    this.text,
  });

  final String? link;
  final String? text;

  factory Cta.fromJson(String str) => Cta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cta.fromMap(Map<String, dynamic> json) => Cta(
        link: json["link"],
        text: json["text"],
      );

  Map<String, dynamic> toMap() => {
        "link": link,
        "text": text,
      };
}

class Images {
  Images({
    this.original,
    this.downsized,
    this.downsizedLarge,
    this.downsizedMedium,
    this.downsizedSmall,
    this.downsizedStill,
    this.fixedHeight,
    this.fixedHeightDownsampled,
    this.fixedHeightSmall,
    this.fixedHeightSmallStill,
    this.fixedHeightStill,
    this.fixedWidth,
    this.fixedWidthDownsampled,
    this.fixedWidthSmall,
    this.fixedWidthSmallStill,
    this.fixedWidthStill,
    this.looping,
    this.originalStill,
    this.originalMp4,
    this.preview,
    this.previewGif,
    this.previewWebp,
    this.the480WStill,
    this.hd,
  });

  final FixedHeight? original;
  final The480WStill? downsized;
  final The480WStill? downsizedLarge;
  final The480WStill? downsizedMedium;
  final DownsizedSmall? downsizedSmall;
  final The480WStill? downsizedStill;
  final FixedHeight? fixedHeight;
  final FixedHeight? fixedHeightDownsampled;
  final FixedHeight? fixedHeightSmall;
  final The480WStill? fixedHeightSmallStill;
  final The480WStill? fixedHeightStill;
  final FixedHeight? fixedWidth;
  final FixedHeight? fixedWidthDownsampled;
  final FixedHeight? fixedWidthSmall;
  final The480WStill? fixedWidthSmallStill;
  final The480WStill? fixedWidthStill;
  final Looping? looping;
  final The480WStill? originalStill;
  final DownsizedSmall? originalMp4;
  final DownsizedSmall? preview;
  final The480WStill? previewGif;
  final The480WStill? previewWebp;
  final The480WStill? the480WStill;
  final DownsizedSmall? hd;

  factory Images.fromJson(String str) => Images.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Images.fromMap(Map<String, dynamic> json) => Images(
        original: FixedHeight.fromMap(json["original"]),
        downsized: The480WStill.fromMap(json["downsized"]),
        downsizedLarge: The480WStill.fromMap(json["downsized_large"]),
        downsizedMedium: The480WStill.fromMap(json["downsized_medium"]),
        downsizedSmall: DownsizedSmall.fromMap(json["downsized_small"]),
        downsizedStill: The480WStill.fromMap(json["downsized_still"]),
        fixedHeight: FixedHeight.fromMap(json["fixed_height"]),
        fixedHeightDownsampled:
            FixedHeight.fromMap(json["fixed_height_downsampled"]),
        fixedHeightSmall: FixedHeight.fromMap(json["fixed_height_small"]),
        fixedHeightSmallStill:
            The480WStill.fromMap(json["fixed_height_small_still"]),
        fixedHeightStill: The480WStill.fromMap(json["fixed_height_still"]),
        fixedWidth: FixedHeight.fromMap(json["fixed_width"]),
        fixedWidthDownsampled:
            FixedHeight.fromMap(json["fixed_width_downsampled"]),
        fixedWidthSmall: FixedHeight.fromMap(json["fixed_width_small"]),
        fixedWidthSmallStill:
            The480WStill.fromMap(json["fixed_width_small_still"]),
        fixedWidthStill: The480WStill.fromMap(json["fixed_width_still"]),
        looping: Looping.fromMap(json["looping"]),
        originalStill: The480WStill.fromMap(json["original_still"]),
        originalMp4: DownsizedSmall.fromMap(json["original_mp4"]),
        preview: DownsizedSmall.fromMap(json["preview"]),
        previewGif: The480WStill.fromMap(json["preview_gif"]),
        previewWebp: The480WStill.fromMap(json["preview_webp"]),
        the480WStill: The480WStill.fromMap(json["480w_still"]),
        // hd: json["hd"] == null ? null : DownsizedSmall.fromMap(json["hd"]),
      );

  Map<String, dynamic> toMap() => {
        "original": original?.toMap(),
        "downsized": downsized?.toMap(),
        "downsized_large": downsizedLarge?.toMap(),
        "downsized_medium": downsizedMedium?.toMap(),
        "downsized_small": downsizedSmall?.toMap(),
        "downsized_still": downsizedStill?.toMap(),
        "fixed_height": fixedHeight?.toMap(),
        "fixed_height_downsampled": fixedHeightDownsampled?.toMap(),
        "fixed_height_small": fixedHeightSmall?.toMap(),
        "fixed_height_small_still": fixedHeightSmallStill?.toMap(),
        "fixed_height_still": fixedHeightStill?.toMap(),
        "fixed_width": fixedWidth?.toMap(),
        "fixed_width_downsampled": fixedWidthDownsampled?.toMap(),
        "fixed_width_small": fixedWidthSmall?.toMap(),
        "fixed_width_small_still": fixedWidthSmallStill?.toMap(),
        "fixed_width_still": fixedWidthStill?.toMap(),
        "looping": looping?.toMap(),
        "original_still": originalStill?.toMap(),
        "original_mp4": originalMp4?.toMap(),
        "preview": preview?.toMap(),
        "preview_gif": previewGif?.toMap(),
        "preview_webp": previewWebp?.toMap(),
        "480w_still": the480WStill?.toMap(),
        "hd": hd,
      };
}

class The480WStill {
  The480WStill({
    this.height,
    this.width,
    this.size,
    this.url,
  });

  final String? height;
  final String? width;
  final String? size;
  final String? url;

  factory The480WStill.fromJson(String str) =>
      The480WStill.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory The480WStill.fromMap(Map<String, dynamic> json) => The480WStill(
        height: json["height"],
        width: json["width"],
        size: json["size"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "height": height,
        "width": width,
        "size": size,
        "url": url,
      };
}

class DownsizedSmall {
  DownsizedSmall({
    this.height,
    this.width,
    this.mp4Size,
    this.mp4,
  });

  final String? height;
  final String? width;
  final String? mp4Size;
  final String? mp4;

  factory DownsizedSmall.fromJson(String str) =>
      DownsizedSmall.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DownsizedSmall.fromMap(Map<String, dynamic> json) => DownsizedSmall(
        height: json["height"],
        width: json["width"],
        mp4Size: json["mp4_size"],
        mp4: json["mp4"],
      );

  Map<String, dynamic> toMap() => {
        "height": height,
        "width": width,
        "mp4_size": mp4Size,
        "mp4": mp4,
      };
}

class FixedHeight {
  FixedHeight({
    this.height,
    this.width,
    this.size,
    this.url,
    this.mp4Size,
    this.mp4,
    this.webpSize,
    this.webp,
    this.frames,
    this.hash,
  });

  final String? height;
  final String? width;
  final String? size;
  final String? url;
  final String? mp4Size;
  final String? mp4;
  final String? webpSize;
  final String? webp;
  final String? frames;
  final String? hash;

  factory FixedHeight.fromJson(String str) =>
      FixedHeight.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FixedHeight.fromMap(Map<String, dynamic> json) => FixedHeight(
        height: json["height"],
        width: json["width"],
        size: json["size"],
        url: json["url"],
        mp4Size: json["mp4_size"],
        mp4: json["mp4"],
        webpSize: json["webp_size"],
        webp: json["webp"],
        frames: json["frames"],
        hash: json["hash"],
      );

  Map<String, dynamic> toMap() => {
        "height": height,
        "width": width,
        "size": size,
        "url": url,
        "mp4_size": mp4Size,
        "mp4": mp4,
        "webp_size": webpSize,
        "webp": webp,
        "frames": frames,
        "hash": hash,
      };
}

class Looping {
  Looping({
    this.mp4Size,
    this.mp4,
  });

  final String? mp4Size;
  final String? mp4;

  factory Looping.fromJson(String str) => Looping.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Looping.fromMap(Map<String, dynamic> json) => Looping(
        mp4Size: json["mp4_size"],
        mp4: json["mp4"],
      );

  Map<String, dynamic> toMap() => {
        "mp4_size": mp4Size,
        "mp4": mp4,
      };
}

// enum Rating { pg, g, pg_13 }

// final ratingValues = EnumValues({
//     "g": Rating.g,
//     "pg": Rating.pg,
//     "pg-13": Rating.pg_13
// });

// enum Type { gif }

// final typeValues = EnumValues({
//     "gif": Type.gif
// });

class User {
  User({
    this.avatarUrl,
    this.bannerImage,
    this.bannerUrl,
    this.profileUrl,
    this.username,
    this.displayName,
    this.description,
    this.instagramUrl,
    this.websiteUrl,
    this.isVerified,
  });

  final String? avatarUrl;
  final String? bannerImage;
  final String? bannerUrl;
  final String? profileUrl;
  final String? username;
  final String? displayName;
  final String? description;
  final String? instagramUrl;
  final String? websiteUrl;
  final bool? isVerified;

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        avatarUrl: json["avatar_url"],
        bannerImage: json["banner_image"],
        bannerUrl: json["banner_url"],
        profileUrl: json["profile_url"],
        username: json["username"],
        displayName: json["display_name"],
        description: json["description"],
        instagramUrl: json["instagram_url"],
        websiteUrl: json["website_url"],
        isVerified: json["is_verified"],
      );

  Map<String, dynamic> toMap() => {
        "avatar_url": avatarUrl,
        "banner_image": bannerImage,
        "banner_url": bannerUrl,
        "profile_url": profileUrl,
        "username": username,
        "display_name": displayName,
        "description": description,
        "instagram_url": instagramUrl,
        "website_url": websiteUrl,
        "is_verified": isVerified,
      };
}

class Meta {
  Meta({
    this.status,
    this.msg,
    this.responseId,
  });

  final int? status;
  final String? msg;
  final String? responseId;

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        status: json["status"],
        msg: json["msg"],
        responseId: json["response_id"],
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "msg": msg,
        "response_id": responseId,
      };
}
