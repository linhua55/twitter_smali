package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.media.foundmedia.FoundMediaImageVariant;
import com.twitter.model.media.foundmedia.FoundMediaOrigin;
import com.twitter.model.media.foundmedia.FoundMediaProvider;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonFoundMediaItem$$JsonObjectMapper extends JsonMapper<JsonFoundMediaItem> {
    public JsonFoundMediaItem parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFoundMediaItem _parse(JsonParser jsonParser) throws IOException {
        JsonFoundMediaItem jsonFoundMediaItem = new JsonFoundMediaItem();
        if (jsonParser.d() == null) {
            jsonParser.a();
        }
        if (jsonParser.d() != JsonToken.b) {
            jsonParser.c();
            return null;
        }
        while (jsonParser.a() != JsonToken.c) {
            String e = jsonParser.e();
            jsonParser.a();
            parseField(jsonFoundMediaItem, e, jsonParser);
            jsonParser.c();
        }
        return jsonFoundMediaItem;
    }

    public static void parseField(JsonFoundMediaItem jsonFoundMediaItem, String str, JsonParser jsonParser) throws IOException {
        if ("found_media_origin".equals(str)) {
            jsonFoundMediaItem.d = (FoundMediaOrigin) LoganSquare.typeConverterFor(FoundMediaOrigin.class).parse(jsonParser);
        } else if ("id".equals(str)) {
            jsonFoundMediaItem.c = jsonParser.a(null);
        } else if ("item_type".equals(str)) {
            jsonFoundMediaItem.b = jsonParser.a(null);
        } else if ("original_image".equals(str)) {
            jsonFoundMediaItem.g = (FoundMediaImageVariant) LoganSquare.typeConverterFor(FoundMediaImageVariant.class).parse(jsonParser);
        } else if ("provider".equals(str)) {
            jsonFoundMediaItem.a = (FoundMediaProvider) LoganSquare.typeConverterFor(FoundMediaProvider.class).parse(jsonParser);
        } else if ("thumbnail_images".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    FoundMediaImageVariant foundMediaImageVariant = (FoundMediaImageVariant) LoganSquare.typeConverterFor(FoundMediaImageVariant.class).parse(jsonParser);
                    if (foundMediaImageVariant != null) {
                        arrayList.add(foundMediaImageVariant);
                    }
                }
                jsonFoundMediaItem.f = arrayList;
                return;
            }
            jsonFoundMediaItem.f = null;
        } else if ("url".equals(str)) {
            jsonFoundMediaItem.e = jsonParser.a(null);
        }
    }

    public void serialize(JsonFoundMediaItem jsonFoundMediaItem, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFoundMediaItem, jsonGenerator, z);
    }

    public static void _serialize(JsonFoundMediaItem jsonFoundMediaItem, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonFoundMediaItem.d != null) {
            LoganSquare.typeConverterFor(FoundMediaOrigin.class).serialize(jsonFoundMediaItem.d, "found_media_origin", true, jsonGenerator);
        }
        jsonGenerator.a("id", jsonFoundMediaItem.c);
        jsonGenerator.a("item_type", jsonFoundMediaItem.b);
        if (jsonFoundMediaItem.g != null) {
            LoganSquare.typeConverterFor(FoundMediaImageVariant.class).serialize(jsonFoundMediaItem.g, "original_image", true, jsonGenerator);
        }
        if (jsonFoundMediaItem.a != null) {
            LoganSquare.typeConverterFor(FoundMediaProvider.class).serialize(jsonFoundMediaItem.a, "provider", true, jsonGenerator);
        }
        List<FoundMediaImageVariant> list = jsonFoundMediaItem.f;
        if (list != null) {
            jsonGenerator.a("thumbnail_images");
            jsonGenerator.a();
            for (FoundMediaImageVariant foundMediaImageVariant : list) {
                if (foundMediaImageVariant != null) {
                    LoganSquare.typeConverterFor(FoundMediaImageVariant.class).serialize(foundMediaImageVariant, "lslocalthumbnail_imagesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("url", jsonFoundMediaItem.e);
        if (z) {
            jsonGenerator.d();
        }
    }
}
