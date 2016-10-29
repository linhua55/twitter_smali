package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonUploadAndMatchContactsResponse$$JsonObjectMapper extends JsonMapper<JsonUploadAndMatchContactsResponse> {
    public JsonUploadAndMatchContactsResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUploadAndMatchContactsResponse _parse(JsonParser jsonParser) throws IOException {
        JsonUploadAndMatchContactsResponse jsonUploadAndMatchContactsResponse = new JsonUploadAndMatchContactsResponse();
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
            parseField(jsonUploadAndMatchContactsResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonUploadAndMatchContactsResponse;
    }

    public static void parseField(JsonUploadAndMatchContactsResponse jsonUploadAndMatchContactsResponse, String str, JsonParser jsonParser) throws IOException {
        if (!"matches".equals(str)) {
            JsonUploadContactsResponse$$JsonObjectMapper.parseField(jsonUploadAndMatchContactsResponse, str, jsonParser);
        } else if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonContactMatch _parse = JsonContactMatch$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonUploadAndMatchContactsResponse.a = arrayList;
        } else {
            jsonUploadAndMatchContactsResponse.a = null;
        }
    }

    public void serialize(JsonUploadAndMatchContactsResponse jsonUploadAndMatchContactsResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUploadAndMatchContactsResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonUploadAndMatchContactsResponse jsonUploadAndMatchContactsResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonContactMatch> list = jsonUploadAndMatchContactsResponse.a;
        if (list != null) {
            jsonGenerator.a("matches");
            jsonGenerator.a();
            for (JsonContactMatch jsonContactMatch : list) {
                if (jsonContactMatch != null) {
                    JsonContactMatch$$JsonObjectMapper._serialize(jsonContactMatch, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        JsonUploadContactsResponse$$JsonObjectMapper._serialize(jsonUploadAndMatchContactsResponse, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
