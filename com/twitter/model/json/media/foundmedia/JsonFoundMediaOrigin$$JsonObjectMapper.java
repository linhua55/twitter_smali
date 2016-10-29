package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonFoundMediaOrigin$$JsonObjectMapper extends JsonMapper<JsonFoundMediaOrigin> {
    public JsonFoundMediaOrigin parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFoundMediaOrigin _parse(JsonParser jsonParser) throws IOException {
        JsonFoundMediaOrigin jsonFoundMediaOrigin = new JsonFoundMediaOrigin();
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
            parseField(jsonFoundMediaOrigin, e, jsonParser);
            jsonParser.c();
        }
        return jsonFoundMediaOrigin;
    }

    public static void parseField(JsonFoundMediaOrigin jsonFoundMediaOrigin, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonFoundMediaOrigin.a = jsonParser.a(null);
        } else if ("provider".equals(str)) {
            jsonFoundMediaOrigin.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonFoundMediaOrigin jsonFoundMediaOrigin, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFoundMediaOrigin, jsonGenerator, z);
    }

    public static void _serialize(JsonFoundMediaOrigin jsonFoundMediaOrigin, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonFoundMediaOrigin.a);
        jsonGenerator.a("provider", jsonFoundMediaOrigin.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
