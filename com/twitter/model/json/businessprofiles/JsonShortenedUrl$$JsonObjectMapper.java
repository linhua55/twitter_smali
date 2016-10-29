package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonShortenedUrl$$JsonObjectMapper extends JsonMapper<JsonShortenedUrl> {
    public JsonShortenedUrl parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonShortenedUrl _parse(JsonParser jsonParser) throws IOException {
        JsonShortenedUrl jsonShortenedUrl = new JsonShortenedUrl();
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
            parseField(jsonShortenedUrl, e, jsonParser);
            jsonParser.c();
        }
        return jsonShortenedUrl;
    }

    public static void parseField(JsonShortenedUrl jsonShortenedUrl, String str, JsonParser jsonParser) throws IOException {
        if ("long_url".equals(str)) {
            jsonShortenedUrl.a = jsonParser.a(null);
        } else if ("short_url".equals(str)) {
            jsonShortenedUrl.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonShortenedUrl jsonShortenedUrl, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonShortenedUrl, jsonGenerator, z);
    }

    public static void _serialize(JsonShortenedUrl jsonShortenedUrl, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("long_url", jsonShortenedUrl.a);
        jsonGenerator.a("short_url", jsonShortenedUrl.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
