package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonPushDeviceResponse$$JsonObjectMapper extends JsonMapper<JsonPushDeviceResponse> {
    public JsonPushDeviceResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPushDeviceResponse _parse(JsonParser jsonParser) throws IOException {
        JsonPushDeviceResponse jsonPushDeviceResponse = new JsonPushDeviceResponse();
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
            parseField(jsonPushDeviceResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonPushDeviceResponse;
    }

    public static void parseField(JsonPushDeviceResponse jsonPushDeviceResponse, String str, JsonParser jsonParser) throws IOException {
        if ("enabled_for".equals(str)) {
            jsonPushDeviceResponse.a = jsonParser.d() == JsonToken.m ? null : Integer.valueOf(jsonParser.o());
        }
    }

    public void serialize(JsonPushDeviceResponse jsonPushDeviceResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPushDeviceResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonPushDeviceResponse jsonPushDeviceResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("enabled_for", jsonPushDeviceResponse.a.intValue());
        if (z) {
            jsonGenerator.d();
        }
    }
}
