package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonContact$$JsonObjectMapper extends JsonMapper<JsonContact> {
    public JsonContact parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonContact _parse(JsonParser jsonParser) throws IOException {
        JsonContact jsonContact = new JsonContact();
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
            parseField(jsonContact, e, jsonParser);
            jsonParser.c();
        }
        return jsonContact;
    }

    public static void parseField(JsonContact jsonContact, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonContact.a = jsonParser.p();
        } else if ("item".equals(str)) {
            jsonContact.b = jsonParser.o();
        }
    }

    public void serialize(JsonContact jsonContact, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonContact, jsonGenerator, z);
    }

    public static void _serialize(JsonContact jsonContact, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonContact.a);
        jsonGenerator.a("item", jsonContact.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
