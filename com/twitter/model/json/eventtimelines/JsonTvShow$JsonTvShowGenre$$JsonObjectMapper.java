package com.twitter.model.json.eventtimelines;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTvShow$JsonTvShowGenre$$JsonObjectMapper extends JsonMapper<JsonTvShowGenre> {
    public JsonTvShowGenre parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTvShowGenre _parse(JsonParser jsonParser) throws IOException {
        JsonTvShowGenre jsonTvShowGenre = new JsonTvShowGenre();
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
            parseField(jsonTvShowGenre, e, jsonParser);
            jsonParser.c();
        }
        return jsonTvShowGenre;
    }

    public static void parseField(JsonTvShowGenre jsonTvShowGenre, String str, JsonParser jsonParser) throws IOException {
        if ("name".equals(str)) {
            jsonTvShowGenre.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonTvShowGenre jsonTvShowGenre, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTvShowGenre, jsonGenerator, z);
    }

    public static void _serialize(JsonTvShowGenre jsonTvShowGenre, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("name", jsonTvShowGenre.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
