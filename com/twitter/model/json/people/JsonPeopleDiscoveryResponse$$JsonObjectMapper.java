package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonPeopleDiscoveryResponse$$JsonObjectMapper extends JsonMapper<JsonPeopleDiscoveryResponse> {
    public JsonPeopleDiscoveryResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPeopleDiscoveryResponse _parse(JsonParser jsonParser) throws IOException {
        JsonPeopleDiscoveryResponse jsonPeopleDiscoveryResponse = new JsonPeopleDiscoveryResponse();
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
            parseField(jsonPeopleDiscoveryResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonPeopleDiscoveryResponse;
    }

    public static void parseField(JsonPeopleDiscoveryResponse jsonPeopleDiscoveryResponse, String str, JsonParser jsonParser) throws IOException {
        if ("modules".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    JsonModule _parse = JsonModule$$JsonObjectMapper._parse(jsonParser);
                    if (_parse != null) {
                        arrayList.add(_parse);
                    }
                }
                jsonPeopleDiscoveryResponse.a = arrayList;
                return;
            }
            jsonPeopleDiscoveryResponse.a = null;
        } else if ("ttl".equals(str)) {
            jsonPeopleDiscoveryResponse.b = jsonParser.p();
        }
    }

    public void serialize(JsonPeopleDiscoveryResponse jsonPeopleDiscoveryResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPeopleDiscoveryResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonPeopleDiscoveryResponse jsonPeopleDiscoveryResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonModule> list = jsonPeopleDiscoveryResponse.a;
        if (list != null) {
            jsonGenerator.a("modules");
            jsonGenerator.a();
            for (JsonModule jsonModule : list) {
                if (jsonModule != null) {
                    JsonModule$$JsonObjectMapper._serialize(jsonModule, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("ttl", jsonPeopleDiscoveryResponse.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
