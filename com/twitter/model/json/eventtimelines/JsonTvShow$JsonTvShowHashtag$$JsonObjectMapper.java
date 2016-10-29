package com.twitter.model.json.eventtimelines;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTvShow$JsonTvShowHashtag$$JsonObjectMapper extends JsonMapper<JsonTvShowHashtag> {
    public JsonTvShowHashtag parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTvShowHashtag _parse(JsonParser jsonParser) throws IOException {
        JsonTvShowHashtag jsonTvShowHashtag = new JsonTvShowHashtag();
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
            parseField(jsonTvShowHashtag, e, jsonParser);
            jsonParser.c();
        }
        return jsonTvShowHashtag;
    }

    public static void parseField(JsonTvShowHashtag jsonTvShowHashtag, String str, JsonParser jsonParser) throws IOException {
        if ("text".equals(str)) {
            jsonTvShowHashtag.a = jsonParser.a(null);
        } else if ("type".equals(str)) {
            jsonTvShowHashtag.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonTvShowHashtag jsonTvShowHashtag, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTvShowHashtag, jsonGenerator, z);
    }

    public static void _serialize(JsonTvShowHashtag jsonTvShowHashtag, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("text", jsonTvShowHashtag.a);
        jsonGenerator.a("type", jsonTvShowHashtag.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
