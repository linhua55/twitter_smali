package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.twitter.model.businessprofiles.a;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonContactInfo$$JsonObjectMapper extends JsonMapper<JsonContactInfo> {
    public JsonContactInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonContactInfo _parse(JsonParser jsonParser) throws IOException {
        JsonContactInfo jsonContactInfo = new JsonContactInfo();
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
            parseField(jsonContactInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonContactInfo;
    }

    public static void parseField(JsonContactInfo jsonContactInfo, String str, JsonParser jsonParser) throws IOException {
        if ("address".equals(str)) {
            jsonContactInfo.a = (a) LoganSquare.typeConverterFor(a.class).parse(jsonParser);
        } else if ("phone_number".equals(str)) {
            jsonContactInfo.b = (PhoneNumber) LoganSquare.typeConverterFor(PhoneNumber.class).parse(jsonParser);
        }
    }

    public void serialize(JsonContactInfo jsonContactInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonContactInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonContactInfo jsonContactInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonContactInfo.a != null) {
            LoganSquare.typeConverterFor(a.class).serialize(jsonContactInfo.a, "address", true, jsonGenerator);
        }
        if (jsonContactInfo.b != null) {
            LoganSquare.typeConverterFor(PhoneNumber.class).serialize(jsonContactInfo.b, "phone_number", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
