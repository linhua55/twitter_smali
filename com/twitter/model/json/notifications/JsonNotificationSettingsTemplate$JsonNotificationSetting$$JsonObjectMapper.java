package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.notifications.JsonNotificationSettingsTemplate.JsonNotificationSetting;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonNotificationSettingsTemplate$JsonNotificationSetting$$JsonObjectMapper extends JsonMapper<JsonNotificationSetting> {
    public JsonNotificationSetting parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonNotificationSetting _parse(JsonParser jsonParser) throws IOException {
        JsonNotificationSetting jsonNotificationSetting = new JsonNotificationSetting();
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
            parseField(jsonNotificationSetting, e, jsonParser);
            jsonParser.c();
        }
        return jsonNotificationSetting;
    }

    public static void parseField(JsonNotificationSetting jsonNotificationSetting, String str, JsonParser jsonParser) throws IOException {
        if ("control_type".equals(str)) {
            jsonNotificationSetting.a = jsonParser.a(null);
        } else if ("description".equals(str)) {
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
                jsonNotificationSetting.d = hashMap;
                return;
            }
            jsonNotificationSetting.d = null;
        } else if ("id".equals(str)) {
            jsonNotificationSetting.b = jsonParser.a(null);
        } else if ("name".equals(str)) {
            jsonNotificationSetting.c = jsonParser.a(null);
        }
    }

    public void serialize(JsonNotificationSetting jsonNotificationSetting, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonNotificationSetting, jsonGenerator, z);
    }

    public static void _serialize(JsonNotificationSetting jsonNotificationSetting, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("control_type", jsonNotificationSetting.a);
        Map map = jsonNotificationSetting.d;
        if (map != null) {
            jsonGenerator.a("description");
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
        jsonGenerator.a("id", jsonNotificationSetting.b);
        jsonGenerator.a("name", jsonNotificationSetting.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
