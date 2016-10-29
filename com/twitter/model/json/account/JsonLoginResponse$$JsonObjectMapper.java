package com.twitter.model.json.account;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonLoginResponse$$JsonObjectMapper extends JsonMapper<JsonLoginResponse> {
    public JsonLoginResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonLoginResponse _parse(JsonParser jsonParser) throws IOException {
        JsonLoginResponse jsonLoginResponse = new JsonLoginResponse();
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
            parseField(jsonLoginResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonLoginResponse;
    }

    public static void parseField(JsonLoginResponse jsonLoginResponse, String str, JsonParser jsonParser) throws IOException {
        if ("kdt".equals(str)) {
            jsonLoginResponse.e = jsonParser.a(null);
        } else if ("oauth_token".equals(str)) {
            jsonLoginResponse.a = jsonParser.a(null);
        } else if ("oauth_token_secret".equals(str)) {
            jsonLoginResponse.b = jsonParser.a(null);
        } else if ("login_verification_request_cause".equals(str)) {
            jsonLoginResponse.h = jsonParser.o();
        } else if ("login_verification_request_id".equals(str)) {
            jsonLoginResponse.c = jsonParser.a(null);
        } else if ("login_verification_request_type".equals(str)) {
            jsonLoginResponse.g = jsonParser.o();
        } else if ("login_verification_request_url".equals(str)) {
            jsonLoginResponse.d = jsonParser.a(null);
        } else if ("login_verification_user_id".equals(str)) {
            jsonLoginResponse.f = jsonParser.p();
        }
    }

    public void serialize(JsonLoginResponse jsonLoginResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonLoginResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonLoginResponse jsonLoginResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("kdt", jsonLoginResponse.e);
        jsonGenerator.a("oauth_token", jsonLoginResponse.a);
        jsonGenerator.a("oauth_token_secret", jsonLoginResponse.b);
        jsonGenerator.a("login_verification_request_cause", jsonLoginResponse.h);
        jsonGenerator.a("login_verification_request_id", jsonLoginResponse.c);
        jsonGenerator.a("login_verification_request_type", jsonLoginResponse.g);
        jsonGenerator.a("login_verification_request_url", jsonLoginResponse.d);
        jsonGenerator.a("login_verification_user_id", jsonLoginResponse.f);
        if (z) {
            jsonGenerator.d();
        }
    }
}
