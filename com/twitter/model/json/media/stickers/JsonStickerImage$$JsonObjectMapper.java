package com.twitter.model.json.media.stickers;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonStickerImage$$JsonObjectMapper extends JsonMapper<JsonStickerImage> {
    public JsonStickerImage parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStickerImage _parse(JsonParser jsonParser) throws IOException {
        JsonStickerImage jsonStickerImage = new JsonStickerImage();
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
            parseField(jsonStickerImage, e, jsonParser);
            jsonParser.c();
        }
        return jsonStickerImage;
    }

    public static void parseField(JsonStickerImage jsonStickerImage, String str, JsonParser jsonParser) throws IOException {
        if ("byte_count".equals(str)) {
            jsonStickerImage.c = jsonParser.p();
        } else if ("height".equals(str)) {
            jsonStickerImage.a = jsonParser.o();
        } else if ("type".equals(str)) {
            jsonStickerImage.e = jsonParser.a(null);
        } else if ("url".equals(str)) {
            jsonStickerImage.d = jsonParser.a(null);
        } else if ("width".equals(str)) {
            jsonStickerImage.b = jsonParser.o();
        }
    }

    public void serialize(JsonStickerImage jsonStickerImage, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStickerImage, jsonGenerator, z);
    }

    public static void _serialize(JsonStickerImage jsonStickerImage, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("byte_count", jsonStickerImage.c);
        jsonGenerator.a("height", jsonStickerImage.a);
        jsonGenerator.a("type", jsonStickerImage.e);
        jsonGenerator.a("url", jsonStickerImage.d);
        jsonGenerator.a("width", jsonStickerImage.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
