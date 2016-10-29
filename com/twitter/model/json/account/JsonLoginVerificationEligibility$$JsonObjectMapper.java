package com.twitter.model.json.account;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonLoginVerificationEligibility$$JsonObjectMapper extends JsonMapper<JsonLoginVerificationEligibility> {
    public JsonLoginVerificationEligibility parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonLoginVerificationEligibility _parse(JsonParser jsonParser) throws IOException {
        JsonLoginVerificationEligibility jsonLoginVerificationEligibility = new JsonLoginVerificationEligibility();
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
            parseField(jsonLoginVerificationEligibility, e, jsonParser);
            jsonParser.c();
        }
        return jsonLoginVerificationEligibility;
    }

    public static void parseField(JsonLoginVerificationEligibility jsonLoginVerificationEligibility, String str, JsonParser jsonParser) throws IOException {
        if ("enrolled_elsewhere".equals(str)) {
            jsonLoginVerificationEligibility.b = jsonParser.r();
        } else if ("enrolled".equals(str)) {
            jsonLoginVerificationEligibility.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonLoginVerificationEligibility jsonLoginVerificationEligibility, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonLoginVerificationEligibility, jsonGenerator, z);
    }

    public static void _serialize(JsonLoginVerificationEligibility jsonLoginVerificationEligibility, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("enrolled_elsewhere", jsonLoginVerificationEligibility.b);
        jsonGenerator.a("enrolled", jsonLoginVerificationEligibility.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
