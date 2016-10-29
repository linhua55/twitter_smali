package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.cg;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterListsResponse$$JsonObjectMapper extends JsonMapper<JsonTwitterListsResponse> {
    public JsonTwitterListsResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterListsResponse _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterListsResponse jsonTwitterListsResponse = new JsonTwitterListsResponse();
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
            parseField(jsonTwitterListsResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterListsResponse;
    }

    public static void parseField(JsonTwitterListsResponse jsonTwitterListsResponse, String str, JsonParser jsonParser) throws IOException {
        if ("lists".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cg cgVar = (cg) LoganSquare.typeConverterFor(cg.class).parse(jsonParser);
                    if (cgVar != null) {
                        arrayList.add(cgVar);
                    }
                }
                jsonTwitterListsResponse.b = arrayList;
                return;
            }
            jsonTwitterListsResponse.b = null;
        } else if ("next_cursor_str".equals(str)) {
            jsonTwitterListsResponse.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonTwitterListsResponse jsonTwitterListsResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterListsResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterListsResponse jsonTwitterListsResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cg> list = jsonTwitterListsResponse.b;
        if (list != null) {
            jsonGenerator.a("lists");
            jsonGenerator.a();
            for (cg cgVar : list) {
                if (cgVar != null) {
                    LoganSquare.typeConverterFor(cg.class).serialize(cgVar, "lslocallistsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("next_cursor_str", jsonTwitterListsResponse.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
