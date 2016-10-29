package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonUploadContactsResponse$$JsonObjectMapper extends JsonMapper<JsonUploadContactsResponse> {
    public JsonUploadContactsResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUploadContactsResponse _parse(JsonParser jsonParser) throws IOException {
        JsonUploadContactsResponse jsonUploadContactsResponse = new JsonUploadContactsResponse();
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
            parseField(jsonUploadContactsResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonUploadContactsResponse;
    }

    public static void parseField(JsonUploadContactsResponse jsonUploadContactsResponse, String str, JsonParser jsonParser) throws IOException {
        List arrayList;
        if ("contacts".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    JsonContact _parse = JsonContact$$JsonObjectMapper._parse(jsonParser);
                    if (_parse != null) {
                        arrayList.add(_parse);
                    }
                }
                jsonUploadContactsResponse.c = arrayList;
                return;
            }
            jsonUploadContactsResponse.c = null;
        } else if (!"errored_contacts".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    JsonErroredContact _parse2 = JsonErroredContact$$JsonObjectMapper._parse(jsonParser);
                    if (_parse2 != null) {
                        arrayList.add(_parse2);
                    }
                }
                jsonUploadContactsResponse.b = arrayList;
                return;
            }
            jsonUploadContactsResponse.b = null;
        }
    }

    public void serialize(JsonUploadContactsResponse jsonUploadContactsResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUploadContactsResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonUploadContactsResponse jsonUploadContactsResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonContact> list = jsonUploadContactsResponse.c;
        if (list != null) {
            jsonGenerator.a("contacts");
            jsonGenerator.a();
            for (JsonContact jsonContact : list) {
                if (jsonContact != null) {
                    JsonContact$$JsonObjectMapper._serialize(jsonContact, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        List<JsonErroredContact> list2 = jsonUploadContactsResponse.b;
        if (list2 != null) {
            jsonGenerator.a("errored_contacts");
            jsonGenerator.a();
            for (JsonErroredContact jsonErroredContact : list2) {
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
