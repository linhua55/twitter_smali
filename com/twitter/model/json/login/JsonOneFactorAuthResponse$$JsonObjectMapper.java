package com.twitter.model.json.login;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonOneFactorAuthResponse$$JsonObjectMapper extends JsonMapper<JsonOneFactorAuthResponse> {
    public JsonOneFactorAuthResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonOneFactorAuthResponse _parse(JsonParser jsonParser) throws IOException {
        JsonOneFactorAuthResponse jsonOneFactorAuthResponse = new JsonOneFactorAuthResponse();
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
            parseField(jsonOneFactorAuthResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonOneFactorAuthResponse;
    }

    public static void parseField(JsonOneFactorAuthResponse jsonOneFactorAuthResponse, String str, JsonParser jsonParser) throws IOException {
        if ("login_verification_request_cause".equals(str)) {
            jsonOneFactorAuthResponse.c = jsonParser.o();
        } else if ("login_verification_request_id".equals(str)) {
            jsonOneFactorAuthResponse.a = jsonParser.a(null);
        } else if ("login_verification_request_type".equals(str)) {
            jsonOneFactorAuthResponse.b = jsonParser.o();
        }
    }

    public void serialize(JsonOneFactorAuthResponse jsonOneFactorAuthResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonOneFactorAuthResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonOneFactorAuthResponse jsonOneFactorAuthResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("login_verification_request_cause", jsonOneFactorAuthResponse.c);
        jsonGenerator.a("login_verification_request_id", jsonOneFactorAuthResponse.a);
        jsonGenerator.a("login_verification_request_type", jsonOneFactorAuthResponse.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
