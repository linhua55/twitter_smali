package com.twitter.model.json.concon;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.featureswitch.JsonFeatureSwitchesValueObject;
import com.twitter.model.json.featureswitch.JsonFeatureSwitchesValueObject$$JsonObjectMapper;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonConconBundle$$JsonObjectMapper extends JsonMapper<JsonConconBundle> {
    public JsonConconBundle parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonConconBundle _parse(JsonParser jsonParser) throws IOException {
        JsonConconBundle jsonConconBundle = new JsonConconBundle();
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
            parseField(jsonConconBundle, e, jsonParser);
            jsonParser.c();
        }
        return jsonConconBundle;
    }

    public static void parseField(JsonConconBundle jsonConconBundle, String str, JsonParser jsonParser) throws IOException {
        if ("dtabs".equals(str)) {
            jsonConconBundle.a = jsonParser.a(null);
        } else if (!"feature_switches".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.b) {
                Map hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    String g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, JsonFeatureSwitchesValueObject$$JsonObjectMapper._parse(jsonParser));
                    }
                }
                jsonConconBundle.b = hashMap;
                return;
            }
            jsonConconBundle.b = null;
        }
    }

    public void serialize(JsonConconBundle jsonConconBundle, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonConconBundle, jsonGenerator, z);
    }

    public static void _serialize(JsonConconBundle jsonConconBundle, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("dtabs", jsonConconBundle.a);
        Map map = jsonConconBundle.b;
        if (map != null) {
            jsonGenerator.a("feature_switches");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    JsonFeatureSwitchesValueObject$$JsonObjectMapper._serialize((JsonFeatureSwitchesValueObject) entry.getValue(), jsonGenerator, true);
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
