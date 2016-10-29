package com.twitter.model.json.moments.maker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonCurateRequest$$JsonObjectMapper extends JsonMapper<JsonCurateRequest> {
    public JsonCurateRequest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCurateRequest _parse(JsonParser jsonParser) throws IOException {
        JsonCurateRequest jsonCurateRequest = new JsonCurateRequest();
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
            parseField(jsonCurateRequest, e, jsonParser);
            jsonParser.c();
        }
        return jsonCurateRequest;
    }

    public static void parseField(JsonCurateRequest jsonCurateRequest, String str, JsonParser jsonParser) throws IOException {
        if (!"actions".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonCurateOperation _parse = JsonCurateOperation$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonCurateRequest.a = arrayList;
            return;
        }
        jsonCurateRequest.a = null;
    }

    public void serialize(JsonCurateRequest jsonCurateRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCurateRequest, jsonGenerator, z);
    }

    public static void _serialize(JsonCurateRequest jsonCurateRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonCurateOperation> list = jsonCurateRequest.a;
        if (list != null) {
            jsonGenerator.a("actions");
            jsonGenerator.a();
            for (JsonCurateOperation jsonCurateOperation : list) {
                if (jsonCurateOperation != null) {
                    JsonCurateOperation$$JsonObjectMapper._serialize(jsonCurateOperation, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
