package com.twitter.model.json.eventtimelines;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTvShow$$JsonObjectMapper extends JsonMapper<JsonTvShow> {
    public JsonTvShow parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTvShow _parse(JsonParser jsonParser) throws IOException {
        JsonTvShow jsonTvShow = new JsonTvShow();
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
            parseField(jsonTvShow, e, jsonParser);
            jsonParser.c();
        }
        return jsonTvShow;
    }

    public static void parseField(JsonTvShow jsonTvShow, String str, JsonParser jsonParser) throws IOException {
        if ("_embedded".equals(str)) {
            jsonTvShow.d = JsonTvShowDetails$$JsonObjectMapper._parse(jsonParser);
        } else if ("genre".equals(str)) {
            jsonTvShow.c = JsonTvShow$JsonTvShowGenre$$JsonObjectMapper._parse(jsonParser);
        } else if ("id".equals(str)) {
            jsonTvShow.a = jsonParser.p();
        } else if ("title".equals(str)) {
            jsonTvShow.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonTvShow jsonTvShow, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTvShow, jsonGenerator, z);
    }

    public static void _serialize(JsonTvShow jsonTvShow, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTvShow.d != null) {
            jsonGenerator.a("_embedded");
            JsonTvShowDetails$$JsonObjectMapper._serialize(jsonTvShow.d, jsonGenerator, true);
        }
        if (jsonTvShow.c != null) {
            jsonGenerator.a("genre");
            JsonTvShow$JsonTvShowGenre$$JsonObjectMapper._serialize(jsonTvShow.c, jsonGenerator, true);
        }
        jsonGenerator.a("id", jsonTvShow.a);
        jsonGenerator.a("title", jsonTvShow.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
