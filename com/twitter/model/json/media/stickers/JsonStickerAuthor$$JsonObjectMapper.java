package com.twitter.model.json.media.stickers;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonStickerAuthor$$JsonObjectMapper extends JsonMapper<JsonStickerAuthor> {
    public JsonStickerAuthor parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStickerAuthor _parse(JsonParser jsonParser) throws IOException {
        JsonStickerAuthor jsonStickerAuthor = new JsonStickerAuthor();
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
            parseField(jsonStickerAuthor, e, jsonParser);
            jsonParser.c();
        }
        return jsonStickerAuthor;
    }

    public static void parseField(JsonStickerAuthor jsonStickerAuthor, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonStickerAuthor.a = jsonParser.p();
        } else if ("name".equals(str)) {
            jsonStickerAuthor.b = jsonParser.a(null);
        } else if ("screen_name".equals(str)) {
            jsonStickerAuthor.c = jsonParser.a(null);
        } else if ("verified".equals(str)) {
            jsonStickerAuthor.d = jsonParser.r();
        }
    }

    public void serialize(JsonStickerAuthor jsonStickerAuthor, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStickerAuthor, jsonGenerator, z);
    }

    public static void _serialize(JsonStickerAuthor jsonStickerAuthor, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonStickerAuthor.a);
        jsonGenerator.a("name", jsonStickerAuthor.b);
        jsonGenerator.a("screen_name", jsonStickerAuthor.c);
        jsonGenerator.a("verified", jsonStickerAuthor.d);
        if (z) {
            jsonGenerator.d();
        }
    }
}
