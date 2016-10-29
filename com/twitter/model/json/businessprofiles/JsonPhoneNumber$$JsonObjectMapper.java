package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonPhoneNumber$$JsonObjectMapper extends JsonMapper<JsonPhoneNumber> {
    public JsonPhoneNumber parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPhoneNumber _parse(JsonParser jsonParser) throws IOException {
        JsonPhoneNumber jsonPhoneNumber = new JsonPhoneNumber();
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
            parseField(jsonPhoneNumber, e, jsonParser);
            jsonParser.c();
        }
        return jsonPhoneNumber;
    }

    public static void parseField(JsonPhoneNumber jsonPhoneNumber, String str, JsonParser jsonParser) throws IOException {
        if ("country_code".equals(str)) {
            jsonPhoneNumber.a = jsonParser.o();
        } else if ("number".equals(str)) {
            jsonPhoneNumber.b = jsonParser.p();
        }
    }

    public void serialize(JsonPhoneNumber jsonPhoneNumber, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPhoneNumber, jsonGenerator, z);
    }

    public static void _serialize(JsonPhoneNumber jsonPhoneNumber, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("country_code", jsonPhoneNumber.a);
        jsonGenerator.a("number", jsonPhoneNumber.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
