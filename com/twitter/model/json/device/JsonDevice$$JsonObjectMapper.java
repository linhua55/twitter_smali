package com.twitter.model.json.device;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonDevice$$JsonObjectMapper extends JsonMapper<JsonDevice> {
    public JsonDevice parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonDevice _parse(JsonParser jsonParser) throws IOException {
        JsonDevice jsonDevice = new JsonDevice();
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
            parseField(jsonDevice, e, jsonParser);
            jsonParser.c();
        }
        return jsonDevice;
    }

    public static void parseField(JsonDevice jsonDevice, String str, JsonParser jsonParser) throws IOException {
        if ("is_verizon".equals(str)) {
            jsonDevice.b = jsonParser.r();
        } else if ("phone_number".equals(str)) {
            jsonDevice.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonDevice jsonDevice, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonDevice, jsonGenerator, z);
    }

    public static void _serialize(JsonDevice jsonDevice, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("is_verizon", jsonDevice.b);
        jsonGenerator.a("phone_number", jsonDevice.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
