package com.twitter.model.json.featureswitch;

import cib;
import cin;
import cje;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public final class JsonServerFeatureSwitchesConfiguration$$JsonObjectMapper extends JsonMapper<JsonServerFeatureSwitchesConfiguration> {
    public JsonServerFeatureSwitchesConfiguration parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonServerFeatureSwitchesConfiguration _parse(JsonParser jsonParser) throws IOException {
        JsonServerFeatureSwitchesConfiguration jsonServerFeatureSwitchesConfiguration = new JsonServerFeatureSwitchesConfiguration();
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
            parseField(jsonServerFeatureSwitchesConfiguration, e, jsonParser);
            jsonParser.c();
        }
        return jsonServerFeatureSwitchesConfiguration;
    }

    public static void parseField(JsonServerFeatureSwitchesConfiguration jsonServerFeatureSwitchesConfiguration, String str, JsonParser jsonParser) throws IOException {
        if ("config".equals(str)) {
            jsonServerFeatureSwitchesConfiguration.a = (cib) LoganSquare.typeConverterFor(cib.class).parse(jsonParser);
        } else if ("embedded_darkmoded".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                Set hashSet = new HashSet();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        hashSet.add(a);
                    }
                }
                jsonServerFeatureSwitchesConfiguration.c = hashSet;
                return;
            }
            jsonServerFeatureSwitchesConfiguration.c = null;
        } else if ("impressions".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                Set hashSet2 = new HashSet();
                while (jsonParser.a() != JsonToken.e) {
                    cin cin = (cin) LoganSquare.typeConverterFor(cin.class).parse(jsonParser);
                    if (cin != null) {
                        hashSet2.add(cin);
                    }
                }
                jsonServerFeatureSwitchesConfiguration.b = hashSet2;
                return;
            }
            jsonServerFeatureSwitchesConfiguration.b = null;
        } else if ("versions".equals(str)) {
            jsonServerFeatureSwitchesConfiguration.d = (cje) LoganSquare.typeConverterFor(cje.class).parse(jsonParser);
        }
    }

    public void serialize(JsonServerFeatureSwitchesConfiguration jsonServerFeatureSwitchesConfiguration, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonServerFeatureSwitchesConfiguration, jsonGenerator, z);
    }

    public static void _serialize(JsonServerFeatureSwitchesConfiguration jsonServerFeatureSwitchesConfiguration, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonServerFeatureSwitchesConfiguration.a != null) {
            LoganSquare.typeConverterFor(cib.class).serialize(jsonServerFeatureSwitchesConfiguration.a, "config", true, jsonGenerator);
        }
        Set<String> set = jsonServerFeatureSwitchesConfiguration.c;
        if (set != null) {
            jsonGenerator.a("embedded_darkmoded");
            jsonGenerator.a();
            for (String b : set) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        Set<cin> set2 = jsonServerFeatureSwitchesConfiguration.b;
        if (set2 != null) {
            jsonGenerator.a("impressions");
            jsonGenerator.a();
            for (cin cin : set2) {
                if (cin != null) {
                    LoganSquare.typeConverterFor(cin.class).serialize(cin, "lslocalimpressionsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (jsonServerFeatureSwitchesConfiguration.d != null) {
            LoganSquare.typeConverterFor(cje.class).serialize(jsonServerFeatureSwitchesConfiguration.d, "versions", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
