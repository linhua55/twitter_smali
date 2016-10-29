package com.twitter.model.json.account;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonLoginVerificationRequest$$JsonObjectMapper extends JsonMapper<JsonLoginVerificationRequest> {
    public JsonLoginVerificationRequest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonLoginVerificationRequest _parse(JsonParser jsonParser) throws IOException {
        JsonLoginVerificationRequest jsonLoginVerificationRequest = new JsonLoginVerificationRequest();
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
            parseField(jsonLoginVerificationRequest, e, jsonParser);
            jsonParser.c();
        }
        return jsonLoginVerificationRequest;
    }

    public static void parseField(JsonLoginVerificationRequest jsonLoginVerificationRequest, String str, JsonParser jsonParser) throws IOException {
        if ("browser".equals(str)) {
            jsonLoginVerificationRequest.d = jsonParser.a(null);
        } else if ("challenge".equals(str)) {
            jsonLoginVerificationRequest.b = jsonParser.a(null);
        } else if ("geo".equals(str)) {
            jsonLoginVerificationRequest.c = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonLoginVerificationRequest.a = jsonParser.a(null);
        } else if ("createdAt".equals(str)) {
            jsonLoginVerificationRequest.e = jsonParser.p();
        }
    }

    public void serialize(JsonLoginVerificationRequest jsonLoginVerificationRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonLoginVerificationRequest, jsonGenerator, z);
    }

    public static void _serialize(JsonLoginVerificationRequest jsonLoginVerificationRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("browser", jsonLoginVerificationRequest.d);
        jsonGenerator.a("challenge", jsonLoginVerificationRequest.b);
        jsonGenerator.a("geo", jsonLoginVerificationRequest.c);
        jsonGenerator.a("id", jsonLoginVerificationRequest.a);
        jsonGenerator.a("createdAt", jsonLoginVerificationRequest.e);
        if (z) {
            jsonGenerator.d();
        }
    }
}
