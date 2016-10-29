package com.twitter.model.json.moments.maker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCurateOperation$$JsonObjectMapper extends JsonMapper<JsonCurateOperation> {
    public JsonCurateOperation parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCurateOperation _parse(JsonParser jsonParser) throws IOException {
        JsonCurateOperation jsonCurateOperation = new JsonCurateOperation();
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
            parseField(jsonCurateOperation, e, jsonParser);
            jsonParser.c();
        }
        return jsonCurateOperation;
    }

    public static void parseField(JsonCurateOperation jsonCurateOperation, String str, JsonParser jsonParser) throws IOException {
        if ("above".equals(str)) {
            jsonCurateOperation.d = jsonParser.r();
        } else if ("op".equals(str)) {
            jsonCurateOperation.a = jsonParser.a(null);
        } else if ("relative_to".equals(str)) {
            jsonCurateOperation.c = jsonParser.a(null);
        } else if ("tweet_id".equals(str)) {
            jsonCurateOperation.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonCurateOperation jsonCurateOperation, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCurateOperation, jsonGenerator, z);
    }

    public static void _serialize(JsonCurateOperation jsonCurateOperation, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("above", jsonCurateOperation.d);
        jsonGenerator.a("op", jsonCurateOperation.a);
        jsonGenerator.a("relative_to", jsonCurateOperation.c);
        jsonGenerator.a("tweet_id", jsonCurateOperation.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
