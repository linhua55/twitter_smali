package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonUserDevicesRequest$$JsonObjectMapper extends JsonMapper<JsonUserDevicesRequest> {
    public JsonUserDevicesRequest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUserDevicesRequest _parse(JsonParser jsonParser) throws IOException {
        JsonUserDevicesRequest jsonUserDevicesRequest = new JsonUserDevicesRequest();
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
            parseField(jsonUserDevicesRequest, e, jsonParser);
            jsonParser.c();
        }
        return jsonUserDevicesRequest;
    }

    public static void parseField(JsonUserDevicesRequest jsonUserDevicesRequest, String str, JsonParser jsonParser) throws IOException {
        Integer num = null;
        if ("checksum".equals(str)) {
            jsonUserDevicesRequest.i = jsonParser.a(null);
        } else if ("env".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                num = Integer.valueOf(jsonParser.o());
            }
            jsonUserDevicesRequest.e = num;
        } else if ("locale".equals(str)) {
            jsonUserDevicesRequest.f = jsonParser.a(null);
        } else if ("token".equals(str)) {
            jsonUserDevicesRequest.h = jsonParser.a(null);
        } else if ("transport".equals(str)) {
            jsonUserDevicesRequest.g = jsonParser.a(null);
        } else if ("udid".equals(str)) {
            jsonUserDevicesRequest.d = jsonParser.a(null);
        }
    }

    public void serialize(JsonUserDevicesRequest jsonUserDevicesRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUserDevicesRequest, jsonGenerator, z);
    }

    public static void _serialize(JsonUserDevicesRequest jsonUserDevicesRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("checksum", jsonUserDevicesRequest.i);
        jsonGenerator.a("env", jsonUserDevicesRequest.e.intValue());
        jsonGenerator.a("locale", jsonUserDevicesRequest.f);
        jsonGenerator.a("token", jsonUserDevicesRequest.h);
        jsonGenerator.a("transport", jsonUserDevicesRequest.g);
        jsonGenerator.a("udid", jsonUserDevicesRequest.d);
        if (z) {
            jsonGenerator.d();
        }
    }
}
