package com.twitter.model.json.moments.maker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCoverData$$JsonObjectMapper extends JsonMapper<JsonCoverData> {
    public JsonCoverData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCoverData _parse(JsonParser jsonParser) throws IOException {
        JsonCoverData jsonCoverData = new JsonCoverData();
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
            parseField(jsonCoverData, e, jsonParser);
            jsonParser.c();
        }
        return jsonCoverData;
    }

    public static void parseField(JsonCoverData jsonCoverData, String str, JsonParser jsonParser) throws IOException {
        if ("media_data".equals(str)) {
            jsonCoverData.b = JsonMediaData$$JsonObjectMapper._parse(jsonParser);
        } else if ("tweet_id".equals(str)) {
            jsonCoverData.a = jsonParser.p();
        }
    }

    public void serialize(JsonCoverData jsonCoverData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCoverData, jsonGenerator, z);
    }

    public static void _serialize(JsonCoverData jsonCoverData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonCoverData.b != null) {
            jsonGenerator.a("media_data");
            JsonMediaData$$JsonObjectMapper._serialize(jsonCoverData.b, jsonGenerator, true);
        }
        jsonGenerator.a("tweet_id", jsonCoverData.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
