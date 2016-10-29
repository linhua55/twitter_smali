package com.twitter.model.json.media.sru;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonSruResponse$$JsonObjectMapper extends JsonMapper<JsonSruResponse> {
    public JsonSruResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSruResponse _parse(JsonParser jsonParser) throws IOException {
        JsonSruResponse jsonSruResponse = new JsonSruResponse();
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
            parseField(jsonSruResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonSruResponse;
    }

    public static void parseField(JsonSruResponse jsonSruResponse, String str, JsonParser jsonParser) throws IOException {
        if ("expires_after_secs".equals(str)) {
            jsonSruResponse.c = jsonParser.o();
        } else if ("media_id".equals(str)) {
            jsonSruResponse.a = jsonParser.p();
        } else if ("processing_info".equals(str)) {
            jsonSruResponse.d = JsonProcessingInfo$$JsonObjectMapper._parse(jsonParser);
        } else if ("size".equals(str)) {
            jsonSruResponse.b = jsonParser.o();
        }
    }

    public void serialize(JsonSruResponse jsonSruResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSruResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonSruResponse jsonSruResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("expires_after_secs", jsonSruResponse.c);
        jsonGenerator.a("media_id", jsonSruResponse.a);
        if (jsonSruResponse.d != null) {
            jsonGenerator.a("processing_info");
            JsonProcessingInfo$$JsonObjectMapper._serialize(jsonSruResponse.d, jsonGenerator, true);
        }
        jsonGenerator.a("size", jsonSruResponse.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
