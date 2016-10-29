package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonDestroyContactResponse$$JsonObjectMapper extends JsonMapper<JsonDestroyContactResponse> {
    public JsonDestroyContactResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonDestroyContactResponse _parse(JsonParser jsonParser) throws IOException {
        JsonDestroyContactResponse jsonDestroyContactResponse = new JsonDestroyContactResponse();
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
            parseField(jsonDestroyContactResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonDestroyContactResponse;
    }

    public static void parseField(JsonDestroyContactResponse jsonDestroyContactResponse, String str, JsonParser jsonParser) throws IOException {
        if (!"errored_contacts".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonErroredContact _parse = JsonErroredContact$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonDestroyContactResponse.a = arrayList;
            return;
        }
        jsonDestroyContactResponse.a = null;
    }

    public void serialize(JsonDestroyContactResponse jsonDestroyContactResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonDestroyContactResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonDestroyContactResponse jsonDestroyContactResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonErroredContact> list = jsonDestroyContactResponse.a;
        if (list != null) {
            jsonGenerator.a("errored_contacts");
            jsonGenerator.a();
            for (JsonErroredContact jsonErroredContact : list) {
                if (jsonErroredContact != null) {
                    JsonErroredContact$$JsonObjectMapper._serialize(jsonErroredContact, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
