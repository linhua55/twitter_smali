package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonFoundMediaImageVariant$$JsonObjectMapper extends JsonMapper<JsonFoundMediaImageVariant> {
    public JsonFoundMediaImageVariant parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFoundMediaImageVariant _parse(JsonParser jsonParser) throws IOException {
        JsonFoundMediaImageVariant jsonFoundMediaImageVariant = new JsonFoundMediaImageVariant();
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
            parseField(jsonFoundMediaImageVariant, e, jsonParser);
            jsonParser.c();
        }
        return jsonFoundMediaImageVariant;
    }

    public static void parseField(JsonFoundMediaImageVariant jsonFoundMediaImageVariant, String str, JsonParser jsonParser) throws IOException {
        if ("byte_count".equals(str)) {
            jsonFoundMediaImageVariant.e = jsonParser.o();
        } else if ("height".equals(str)) {
            jsonFoundMediaImageVariant.d = jsonParser.o();
        } else if ("still_image_url".equals(str)) {
            jsonFoundMediaImageVariant.b = jsonParser.a(null);
        } else if ("url".equals(str)) {
            jsonFoundMediaImageVariant.a = jsonParser.a(null);
        } else if ("width".equals(str)) {
            jsonFoundMediaImageVariant.c = jsonParser.o();
        }
    }

    public void serialize(JsonFoundMediaImageVariant jsonFoundMediaImageVariant, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFoundMediaImageVariant, jsonGenerator, z);
    }

    public static void _serialize(JsonFoundMediaImageVariant jsonFoundMediaImageVariant, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("byte_count", jsonFoundMediaImageVariant.e);
        jsonGenerator.a("height", jsonFoundMediaImageVariant.d);
        jsonGenerator.a("still_image_url", jsonFoundMediaImageVariant.b);
        jsonGenerator.a("url", jsonFoundMediaImageVariant.a);
        jsonGenerator.a("width", jsonFoundMediaImageVariant.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
