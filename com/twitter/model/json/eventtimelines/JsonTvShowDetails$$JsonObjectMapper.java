package com.twitter.model.json.eventtimelines;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTvShowDetails$$JsonObjectMapper extends JsonMapper<JsonTvShowDetails> {
    public JsonTvShowDetails parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTvShowDetails _parse(JsonParser jsonParser) throws IOException {
        JsonTvShowDetails jsonTvShowDetails = new JsonTvShowDetails();
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
            parseField(jsonTvShowDetails, e, jsonParser);
            jsonParser.c();
        }
        return jsonTvShowDetails;
    }

    public static void parseField(JsonTvShowDetails jsonTvShowDetails, String str, JsonParser jsonParser) throws IOException {
        if ("handles".equals(str)) {
            jsonTvShowDetails.a = JsonTvShowDetails$JsonTvShowHandleCollection$$JsonObjectMapper._parse(jsonParser);
        } else if ("hashtags".equals(str)) {
            jsonTvShowDetails.b = JsonTvShowDetails$JsonTvShowHashtagCollection$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonTvShowDetails jsonTvShowDetails, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTvShowDetails, jsonGenerator, z);
    }

    public static void _serialize(JsonTvShowDetails jsonTvShowDetails, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTvShowDetails.a != null) {
            jsonGenerator.a("handles");
            JsonTvShowDetails$JsonTvShowHandleCollection$$JsonObjectMapper._serialize(jsonTvShowDetails.a, jsonGenerator, true);
        }
        if (jsonTvShowDetails.b != null) {
            jsonGenerator.a("hashtags");
            JsonTvShowDetails$JsonTvShowHashtagCollection$$JsonObjectMapper._serialize(jsonTvShowDetails.b, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
