package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonErroredContact$$JsonObjectMapper extends JsonMapper<JsonErroredContact> {
    public JsonErroredContact parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonErroredContact _parse(JsonParser jsonParser) throws IOException {
        JsonErroredContact jsonErroredContact = new JsonErroredContact();
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
            parseField(jsonErroredContact, e, jsonParser);
            jsonParser.c();
        }
        return jsonErroredContact;
    }

    public static void parseField(JsonErroredContact jsonErroredContact, String str, JsonParser jsonParser) throws IOException {
        if ("code".equals(str)) {
            jsonErroredContact.a = jsonParser.o();
        } else if ("item".equals(str)) {
            jsonErroredContact.c = jsonParser.o();
        } else if ("message".equals(str)) {
            jsonErroredContact.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonErroredContact jsonErroredContact, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonErroredContact, jsonGenerator, z);
    }

    public static void _serialize(JsonErroredContact jsonErroredContact, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("code", jsonErroredContact.a);
        jsonGenerator.a("item", jsonErroredContact.c);
        jsonGenerator.a("message", jsonErroredContact.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
