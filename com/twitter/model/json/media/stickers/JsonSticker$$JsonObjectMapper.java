package com.twitter.model.json.media.stickers;

import ckl;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonSticker$$JsonObjectMapper extends JsonMapper<JsonSticker> {
    protected static final b JSON_STICKER_DATE_TYPE_CONVERTER;

    static {
        JSON_STICKER_DATE_TYPE_CONVERTER = new b();
    }

    public JsonSticker parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSticker _parse(JsonParser jsonParser) throws IOException {
        JsonSticker jsonSticker = new JsonSticker();
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
            parseField(jsonSticker, e, jsonParser);
            jsonParser.c();
        }
        return jsonSticker;
    }

    public static void parseField(JsonSticker jsonSticker, String str, JsonParser jsonParser) throws IOException {
        if ("annotation_id".equals(str)) {
            jsonSticker.a = jsonParser.p();
        } else if ("author_id".equals(str)) {
            jsonSticker.f = jsonParser.p();
        } else if ("background_color".equals(str)) {
            jsonSticker.d = jsonParser.a(null);
        } else if ("display_name".equals(str)) {
            jsonSticker.b = jsonParser.a(null);
        } else if ("dominant_color".equals(str)) {
            jsonSticker.c = jsonParser.a(null);
        } else if ("end_time".equals(str)) {
            jsonSticker.m = JSON_STICKER_DATE_TYPE_CONVERTER.parse(jsonParser);
        } else if ("group_annotation_id".equals(str)) {
            jsonSticker.e = jsonParser.p();
        } else if ("id".equals(str)) {
            jsonSticker.g = jsonParser.p();
        } else if ("images".equals(str)) {
            jsonSticker.i = (ckl) LoganSquare.typeConverterFor(ckl.class).parse(jsonParser);
        } else if ("start_time".equals(str)) {
            jsonSticker.l = JSON_STICKER_DATE_TYPE_CONVERTER.parse(jsonParser);
        } else if ("sticker_set_annotation_id".equals(str)) {
            jsonSticker.j = jsonParser.p();
        } else if ("type".equals(str)) {
            jsonSticker.k = jsonParser.a(null);
        } else if ("variant_name".equals(str)) {
            jsonSticker.h = jsonParser.a(null);
        }
    }

    public void serialize(JsonSticker jsonSticker, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSticker, jsonGenerator, z);
    }

    public static void _serialize(JsonSticker jsonSticker, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("annotation_id", jsonSticker.a);
        jsonGenerator.a("author_id", jsonSticker.f);
        jsonGenerator.a("background_color", jsonSticker.d);
        jsonGenerator.a("display_name", jsonSticker.b);
        jsonGenerator.a("dominant_color", jsonSticker.c);
        if (jsonSticker.m != null) {
            JSON_STICKER_DATE_TYPE_CONVERTER.serialize(jsonSticker.m, "end_time", true, jsonGenerator);
        }
        jsonGenerator.a("group_annotation_id", jsonSticker.e);
        jsonGenerator.a("id", jsonSticker.g);
        if (jsonSticker.i != null) {
            LoganSquare.typeConverterFor(ckl.class).serialize(jsonSticker.i, "images", true, jsonGenerator);
        }
        if (jsonSticker.l != null) {
            JSON_STICKER_DATE_TYPE_CONVERTER.serialize(jsonSticker.l, "start_time", true, jsonGenerator);
        }
        jsonGenerator.a("sticker_set_annotation_id", jsonSticker.j);
        jsonGenerator.a("type", jsonSticker.k);
        jsonGenerator.a("variant_name", jsonSticker.h);
        if (z) {
            jsonGenerator.d();
        }
    }
}
