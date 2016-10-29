package com.twitter.model.json.moments.maker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCreateMomentRequest$$JsonObjectMapper extends JsonMapper<JsonCreateMomentRequest> {
    public JsonCreateMomentRequest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCreateMomentRequest _parse(JsonParser jsonParser) throws IOException {
        JsonCreateMomentRequest jsonCreateMomentRequest = new JsonCreateMomentRequest();
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
            parseField(jsonCreateMomentRequest, e, jsonParser);
            jsonParser.c();
        }
        return jsonCreateMomentRequest;
    }

    public static void parseField(JsonCreateMomentRequest jsonCreateMomentRequest, String str, JsonParser jsonParser) throws IOException {
        if ("description".equals(str)) {
            jsonCreateMomentRequest.b = jsonParser.a(null);
        } else if ("initial_tweet".equals(str)) {
            jsonCreateMomentRequest.c = jsonParser.a(null);
        } else if ("title".equals(str)) {
            jsonCreateMomentRequest.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonCreateMomentRequest jsonCreateMomentRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCreateMomentRequest, jsonGenerator, z);
    }

    public static void _serialize(JsonCreateMomentRequest jsonCreateMomentRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("description", jsonCreateMomentRequest.b);
        jsonGenerator.a("initial_tweet", jsonCreateMomentRequest.c);
        jsonGenerator.a("title", jsonCreateMomentRequest.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
