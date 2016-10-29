package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonSaveUserDevicesRequest$$JsonObjectMapper extends JsonMapper<JsonSaveUserDevicesRequest> {
    public JsonSaveUserDevicesRequest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSaveUserDevicesRequest _parse(JsonParser jsonParser) throws IOException {
        JsonSaveUserDevicesRequest jsonSaveUserDevicesRequest = new JsonSaveUserDevicesRequest();
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
            parseField(jsonSaveUserDevicesRequest, e, jsonParser);
            jsonParser.c();
        }
        return jsonSaveUserDevicesRequest;
    }

    public static void parseField(JsonSaveUserDevicesRequest jsonSaveUserDevicesRequest, String str, JsonParser jsonParser) throws IOException {
        Boolean bool = null;
        Integer valueOf;
        if ("sleep_hour_begin".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                valueOf = Integer.valueOf(jsonParser.o());
            }
            jsonSaveUserDevicesRequest.b = valueOf;
        } else if ("sleep_hour_end".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                valueOf = Integer.valueOf(jsonParser.o());
            }
            jsonSaveUserDevicesRequest.c = valueOf;
        } else if ("sleep_setting_enabled".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                bool = Boolean.valueOf(jsonParser.r());
            }
            jsonSaveUserDevicesRequest.a = bool;
        } else {
            JsonUserDevicesRequest$$JsonObjectMapper.parseField(jsonSaveUserDevicesRequest, str, jsonParser);
        }
    }

    public void serialize(JsonSaveUserDevicesRequest jsonSaveUserDevicesRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSaveUserDevicesRequest, jsonGenerator, z);
    }

    public static void _serialize(JsonSaveUserDevicesRequest jsonSaveUserDevicesRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("sleep_hour_begin", jsonSaveUserDevicesRequest.b.intValue());
        jsonGenerator.a("sleep_hour_end", jsonSaveUserDevicesRequest.c.intValue());
        jsonGenerator.a("sleep_setting_enabled", jsonSaveUserDevicesRequest.a.booleanValue());
        JsonUserDevicesRequest$$JsonObjectMapper._serialize(jsonSaveUserDevicesRequest, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
