package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCapsuleError$$JsonObjectMapper extends JsonMapper<JsonCapsuleError> {
    public JsonCapsuleError parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCapsuleError _parse(JsonParser jsonParser) throws IOException {
        JsonCapsuleError jsonCapsuleError = new JsonCapsuleError();
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
            parseField(jsonCapsuleError, e, jsonParser);
            jsonParser.c();
        }
        return jsonCapsuleError;
    }

    public static void parseField(JsonCapsuleError jsonCapsuleError, String str, JsonParser jsonParser) throws IOException {
        if ("code".equals(str)) {
            jsonCapsuleError.a = jsonParser.o();
        } else if ("cta_action".equals(str)) {
            jsonCapsuleError.f = jsonParser.a(null);
        } else if ("cta_title".equals(str)) {
            jsonCapsuleError.e = jsonParser.a(null);
        } else if ("message".equals(str)) {
            jsonCapsuleError.d = jsonParser.a(null);
        } else if ("reason".equals(str)) {
            jsonCapsuleError.b = jsonParser.a(null);
        } else if ("title".equals(str)) {
            jsonCapsuleError.c = jsonParser.a(null);
        }
    }

    public void serialize(JsonCapsuleError jsonCapsuleError, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCapsuleError, jsonGenerator, z);
    }

    public static void _serialize(JsonCapsuleError jsonCapsuleError, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("code", jsonCapsuleError.a);
        jsonGenerator.a("cta_action", jsonCapsuleError.f);
        jsonGenerator.a("cta_title", jsonCapsuleError.e);
        jsonGenerator.a("message", jsonCapsuleError.d);
        jsonGenerator.a("reason", jsonCapsuleError.b);
        jsonGenerator.a("title", jsonCapsuleError.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
