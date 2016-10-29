package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.notifications.JsonNotificationSettingsApiResult.ResultInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonNotificationSettingsApiResult$$JsonObjectMapper extends JsonMapper<JsonNotificationSettingsApiResult> {
    public JsonNotificationSettingsApiResult parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonNotificationSettingsApiResult _parse(JsonParser jsonParser) throws IOException {
        JsonNotificationSettingsApiResult jsonNotificationSettingsApiResult = new JsonNotificationSettingsApiResult();
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
            parseField(jsonNotificationSettingsApiResult, e, jsonParser);
            jsonParser.c();
        }
        return jsonNotificationSettingsApiResult;
    }

    public static void parseField(JsonNotificationSettingsApiResult jsonNotificationSettingsApiResult, String str, JsonParser jsonParser) throws IOException {
        if ("_code".equals(str)) {
            jsonNotificationSettingsApiResult.d = jsonParser.o();
        } else if ("_result".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    ResultInfo _parse = JsonNotificationSettingsApiResult$ResultInfo$$JsonObjectMapper._parse(jsonParser);
                    if (_parse != null) {
                        arrayList.add(_parse);
                    }
                }
                jsonNotificationSettingsApiResult.c = arrayList;
                return;
            }
            jsonNotificationSettingsApiResult.c = null;
        } else if ("_smsSettings".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                r0 = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    r1 = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        r0.put(r1, null);
                    } else {
                        r0.put(r1, jsonParser.a(null));
                    }
                }
                jsonNotificationSettingsApiResult.a = r0;
                return;
            }
            jsonNotificationSettingsApiResult.a = null;
        } else if (!"_smsSettingsTemplate".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.b) {
                r0 = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    r1 = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        r0.put(r1, null);
                    } else {
                        r0.put(r1, JsonNotificationSettingsTemplate$$JsonObjectMapper._parse(jsonParser));
                    }
                }
                jsonNotificationSettingsApiResult.b = r0;
                return;
            }
            jsonNotificationSettingsApiResult.b = null;
        }
    }

    public void serialize(JsonNotificationSettingsApiResult jsonNotificationSettingsApiResult, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonNotificationSettingsApiResult, jsonGenerator, z);
    }

    public static void _serialize(JsonNotificationSettingsApiResult jsonNotificationSettingsApiResult, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("_code", jsonNotificationSettingsApiResult.d);
        List<ResultInfo> list = jsonNotificationSettingsApiResult.c;
        if (list != null) {
            jsonGenerator.a("_result");
            jsonGenerator.a();
            for (ResultInfo resultInfo : list) {
                if (resultInfo != null) {
                    JsonNotificationSettingsApiResult$ResultInfo$$JsonObjectMapper._serialize(resultInfo, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        Map map = jsonNotificationSettingsApiResult.a;
        if (map != null) {
            jsonGenerator.a("_smsSettings");
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
        map = jsonNotificationSettingsApiResult.b;
        if (map != null) {
            jsonGenerator.a("_smsSettingsTemplate");
            jsonGenerator.c();
            for (Entry entry2 : map.entrySet()) {
                jsonGenerator.a(((String) entry2.getKey()).toString());
                if (entry2.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry2.getValue() != null) {
                    JsonNotificationSettingsTemplate$$JsonObjectMapper._serialize((JsonNotificationSettingsTemplate) entry2.getValue(), jsonGenerator, true);
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
