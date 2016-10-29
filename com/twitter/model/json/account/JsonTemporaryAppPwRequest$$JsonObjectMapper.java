package com.twitter.model.json.account;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTemporaryAppPwRequest$$JsonObjectMapper extends JsonMapper<JsonTemporaryAppPwRequest> {
    public JsonTemporaryAppPwRequest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTemporaryAppPwRequest _parse(JsonParser jsonParser) throws IOException {
        JsonTemporaryAppPwRequest jsonTemporaryAppPwRequest = new JsonTemporaryAppPwRequest();
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
            parseField(jsonTemporaryAppPwRequest, e, jsonParser);
            jsonParser.c();
        }
        return jsonTemporaryAppPwRequest;
    }

    public static void parseField(JsonTemporaryAppPwRequest jsonTemporaryAppPwRequest, String str, JsonParser jsonParser) throws IOException {
        if ("temporary_password".equals(str)) {
            jsonTemporaryAppPwRequest.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonTemporaryAppPwRequest jsonTemporaryAppPwRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTemporaryAppPwRequest, jsonGenerator, z);
    }

    public static void _serialize(JsonTemporaryAppPwRequest jsonTemporaryAppPwRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("temporary_password", jsonTemporaryAppPwRequest.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
