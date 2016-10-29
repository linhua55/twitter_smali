package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.notifications.JsonSaveUserDevicesRequest.JsonSettingsValues;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonSaveUserDevicesRequest$JsonSettingsValues$$JsonObjectMapper extends JsonMapper<JsonSettingsValues> {
    public JsonSettingsValues parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSettingsValues _parse(JsonParser jsonParser) throws IOException {
        JsonSettingsValues jsonSettingsValues = new JsonSettingsValues();
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
            parseField(jsonSettingsValues, e, jsonParser);
            jsonParser.c();
        }
        return jsonSettingsValues;
    }

    public static void parseField(JsonSettingsValues jsonSettingsValues, String str, JsonParser jsonParser) throws IOException {
        if (!"settingsValues".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.b) {
            Map hashMap = new HashMap();
            while (jsonParser.a() != JsonToken.c) {
                String g = jsonParser.g();
                jsonParser.a();
                if (jsonParser.d() == JsonToken.m) {
                    hashMap.put(g, null);
                } else {
                    hashMap.put(g, jsonParser.a(null));
                }
            }
            jsonSettingsValues.a = hashMap;
            return;
        }
        jsonSettingsValues.a = null;
    }

    public void serialize(JsonSettingsValues jsonSettingsValues, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSettingsValues, jsonGenerator, z);
    }

    public static void _serialize(JsonSettingsValues jsonSettingsValues, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Map map = jsonSettingsValues.a;
        if (map != null) {
            jsonGenerator.a("settingsValues");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else {
                    jsonGenerator.b((String) entry.getValue());
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
