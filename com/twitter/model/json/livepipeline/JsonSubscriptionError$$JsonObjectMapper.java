package com.twitter.model.json.livepipeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonSubscriptionError$$JsonObjectMapper extends JsonMapper<JsonSubscriptionError> {
    public JsonSubscriptionError parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSubscriptionError _parse(JsonParser jsonParser) throws IOException {
        JsonSubscriptionError jsonSubscriptionError = new JsonSubscriptionError();
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
            parseField(jsonSubscriptionError, e, jsonParser);
            jsonParser.c();
        }
        return jsonSubscriptionError;
    }

    public static void parseField(JsonSubscriptionError jsonSubscriptionError, String str, JsonParser jsonParser) throws IOException {
        if ("code".equals(str)) {
            jsonSubscriptionError.b = jsonParser.o();
        } else if ("message".equals(str)) {
            jsonSubscriptionError.c = jsonParser.a(null);
        } else if ("topic".equals(str)) {
            jsonSubscriptionError.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonSubscriptionError jsonSubscriptionError, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSubscriptionError, jsonGenerator, z);
    }

    public static void _serialize(JsonSubscriptionError jsonSubscriptionError, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("code", jsonSubscriptionError.b);
        jsonGenerator.a("message", jsonSubscriptionError.c);
        jsonGenerator.a("topic", jsonSubscriptionError.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
