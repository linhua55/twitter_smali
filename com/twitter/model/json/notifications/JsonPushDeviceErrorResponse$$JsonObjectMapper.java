package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.notifications.JsonPushDeviceErrorResponse.Error;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonPushDeviceErrorResponse$$JsonObjectMapper extends JsonMapper<JsonPushDeviceErrorResponse> {
    public JsonPushDeviceErrorResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPushDeviceErrorResponse _parse(JsonParser jsonParser) throws IOException {
        JsonPushDeviceErrorResponse jsonPushDeviceErrorResponse = new JsonPushDeviceErrorResponse();
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
            parseField(jsonPushDeviceErrorResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonPushDeviceErrorResponse;
    }

    public static void parseField(JsonPushDeviceErrorResponse jsonPushDeviceErrorResponse, String str, JsonParser jsonParser) throws IOException {
        if (!"errors".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                Error _parse = JsonPushDeviceErrorResponse$Error$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonPushDeviceErrorResponse.a = arrayList;
            return;
        }
        jsonPushDeviceErrorResponse.a = null;
    }

    public void serialize(JsonPushDeviceErrorResponse jsonPushDeviceErrorResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPushDeviceErrorResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonPushDeviceErrorResponse jsonPushDeviceErrorResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<Error> list = jsonPushDeviceErrorResponse.a;
        if (list != null) {
            jsonGenerator.a("errors");
            jsonGenerator.a();
            for (Error error : list) {
                if (error != null) {
                    JsonPushDeviceErrorResponse$Error$$JsonObjectMapper._serialize(error, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
