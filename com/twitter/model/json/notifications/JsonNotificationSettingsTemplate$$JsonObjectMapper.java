package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.notifications.JsonNotificationSettingsTemplate.JsonControlType;
import com.twitter.model.json.notifications.JsonNotificationSettingsTemplate.JsonNotificationSetting;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonNotificationSettingsTemplate$$JsonObjectMapper extends JsonMapper<JsonNotificationSettingsTemplate> {
    public JsonNotificationSettingsTemplate parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonNotificationSettingsTemplate _parse(JsonParser jsonParser) throws IOException {
        JsonNotificationSettingsTemplate jsonNotificationSettingsTemplate = new JsonNotificationSettingsTemplate();
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
            parseField(jsonNotificationSettingsTemplate, e, jsonParser);
            jsonParser.c();
        }
        return jsonNotificationSettingsTemplate;
    }

    public static void parseField(JsonNotificationSettingsTemplate jsonNotificationSettingsTemplate, String str, JsonParser jsonParser) throws IOException {
        Map hashMap;
        String g;
        if ("control_types".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, JsonNotificationSettingsTemplate$JsonControlType$$JsonObjectMapper._parse(jsonParser));
                    }
                }
                jsonNotificationSettingsTemplate.b = hashMap;
                return;
            }
            jsonNotificationSettingsTemplate.b = null;
        } else if ("doc".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, jsonParser.a(null));
                    }
                }
                jsonNotificationSettingsTemplate.a = hashMap;
                return;
            }
            jsonNotificationSettingsTemplate.a = null;
        } else if (!"settings".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    JsonNotificationSetting _parse = JsonNotificationSettingsTemplate$JsonNotificationSetting$$JsonObjectMapper._parse(jsonParser);
                    if (_parse != null) {
                        arrayList.add(_parse);
                    }
                }
                jsonNotificationSettingsTemplate.c = arrayList;
                return;
            }
            jsonNotificationSettingsTemplate.c = null;
        }
    }

    public void serialize(JsonNotificationSettingsTemplate jsonNotificationSettingsTemplate, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonNotificationSettingsTemplate, jsonGenerator, z);
    }

    public static void _serialize(JsonNotificationSettingsTemplate jsonNotificationSettingsTemplate, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Map map = jsonNotificationSettingsTemplate.b;
        if (map != null) {
            jsonGenerator.a("control_types");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    JsonNotificationSettingsTemplate$JsonControlType$$JsonObjectMapper._serialize((JsonControlType) entry.getValue(), jsonGenerator, true);
                }
            }
            jsonGenerator.d();
        }
        map = jsonNotificationSettingsTemplate.a;
        if (map != null) {
            jsonGenerator.a("doc");
            jsonGenerator.c();
            for (Entry entry2 : map.entrySet()) {
                jsonGenerator.a(((String) entry2.getKey()).toString());
                if (entry2.getValue() == null) {
                    jsonGenerator.e();
                } else {
                    jsonGenerator.b((String) entry2.getValue());
                }
            }
            jsonGenerator.d();
        }
        List<JsonNotificationSetting> list = jsonNotificationSettingsTemplate.c;
        if (list != null) {
            jsonGenerator.a("settings");
            jsonGenerator.a();
            for (JsonNotificationSetting jsonNotificationSetting : list) {
                if (jsonNotificationSetting != null) {
                    JsonNotificationSettingsTemplate$JsonNotificationSetting$$JsonObjectMapper._serialize(jsonNotificationSetting, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
