package com.twitter.model.json.eventtimelines;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTvShow$JsonTvShowHandle$$JsonObjectMapper extends JsonMapper<JsonTvShowHandle> {
    public JsonTvShowHandle parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTvShowHandle _parse(JsonParser jsonParser) throws IOException {
        JsonTvShowHandle jsonTvShowHandle = new JsonTvShowHandle();
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
            parseField(jsonTvShowHandle, e, jsonParser);
            jsonParser.c();
        }
        return jsonTvShowHandle;
    }

    public static void parseField(JsonTvShowHandle jsonTvShowHandle, String str, JsonParser jsonParser) throws IOException {
        if ("screen_name".equals(str)) {
            jsonTvShowHandle.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonTvShowHandle jsonTvShowHandle, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTvShowHandle, jsonGenerator, z);
    }

    public static void _serialize(JsonTvShowHandle jsonTvShowHandle, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("screen_name", jsonTvShowHandle.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
