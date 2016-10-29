package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonGiphyPagination$$JsonObjectMapper extends JsonMapper<JsonGiphyPagination> {
    public JsonGiphyPagination parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGiphyPagination _parse(JsonParser jsonParser) throws IOException {
        JsonGiphyPagination jsonGiphyPagination = new JsonGiphyPagination();
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
            parseField(jsonGiphyPagination, e, jsonParser);
            jsonParser.c();
        }
        return jsonGiphyPagination;
    }

    public static void parseField(JsonGiphyPagination jsonGiphyPagination, String str, JsonParser jsonParser) throws IOException {
        if ("count".equals(str)) {
            jsonGiphyPagination.b = jsonParser.o();
        } else if ("offset".equals(str)) {
            jsonGiphyPagination.c = jsonParser.o();
        } else if ("total_count".equals(str)) {
            jsonGiphyPagination.a = jsonParser.o();
        }
    }

    public void serialize(JsonGiphyPagination jsonGiphyPagination, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGiphyPagination, jsonGenerator, z);
    }

    public static void _serialize(JsonGiphyPagination jsonGiphyPagination, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("count", jsonGiphyPagination.b);
        jsonGenerator.a("offset", jsonGiphyPagination.c);
        jsonGenerator.a("total_count", jsonGiphyPagination.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
