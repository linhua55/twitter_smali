package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonTwitterUser.JsonUserPhone;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTwitterUser$JsonUserPhone$$JsonObjectMapper extends JsonMapper<JsonUserPhone> {
    public JsonUserPhone parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUserPhone _parse(JsonParser jsonParser) throws IOException {
        JsonUserPhone jsonUserPhone = new JsonUserPhone();
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
            parseField(jsonUserPhone, e, jsonParser);
            jsonParser.c();
        }
        return jsonUserPhone;
    }

    public static void parseField(JsonUserPhone jsonUserPhone, String str, JsonParser jsonParser) throws IOException {
        if ("truncated_address".equals(str)) {
            jsonUserPhone.a = jsonParser.a(null);
        } else if ("verified".equals(str)) {
            jsonUserPhone.b = jsonParser.r();
        }
    }

    public void serialize(JsonUserPhone jsonUserPhone, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUserPhone, jsonGenerator, z);
    }

    public static void _serialize(JsonUserPhone jsonUserPhone, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("truncated_address", jsonUserPhone.a);
        jsonGenerator.a("verified", jsonUserPhone.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
