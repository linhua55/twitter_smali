package com.twitter.model.json.featureswitch;

import cib;
import cin;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.featureswitch.JsonLocalFeatureSwitchesConfiguration.JsonFeatureSwitchesDefault;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public final class JsonLocalFeatureSwitchesConfiguration$JsonFeatureSwitchesDefault$$JsonObjectMapper extends JsonMapper<JsonFeatureSwitchesDefault> {
    public JsonFeatureSwitchesDefault parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFeatureSwitchesDefault _parse(JsonParser jsonParser) throws IOException {
        JsonFeatureSwitchesDefault jsonFeatureSwitchesDefault = new JsonFeatureSwitchesDefault();
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
            parseField(jsonFeatureSwitchesDefault, e, jsonParser);
            jsonParser.c();
        }
        return jsonFeatureSwitchesDefault;
    }

    public static void parseField(JsonFeatureSwitchesDefault jsonFeatureSwitchesDefault, String str, JsonParser jsonParser) throws IOException {
        if ("config".equals(str)) {
            jsonFeatureSwitchesDefault.a = (cib) LoganSquare.typeConverterFor(cib.class).parse(jsonParser);
        } else if ("feature_set_token".equals(str)) {
            jsonFeatureSwitchesDefault.c = jsonParser.a(null);
        } else if (!"impressions".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                Set hashSet = new HashSet();
                while (jsonParser.a() != JsonToken.e) {
                    cin cin = (cin) LoganSquare.typeConverterFor(cin.class).parse(jsonParser);
                    if (cin != null) {
                        hashSet.add(cin);
                    }
                }
                jsonFeatureSwitchesDefault.b = hashSet;
                return;
            }
            jsonFeatureSwitchesDefault.b = null;
        }
    }

    public void serialize(JsonFeatureSwitchesDefault jsonFeatureSwitchesDefault, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFeatureSwitchesDefault, jsonGenerator, z);
    }

    public static void _serialize(JsonFeatureSwitchesDefault jsonFeatureSwitchesDefault, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonFeatureSwitchesDefault.a != null) {
            LoganSquare.typeConverterFor(cib.class).serialize(jsonFeatureSwitchesDefault.a, "config", true, jsonGenerator);
        }
        jsonGenerator.a("feature_set_token", jsonFeatureSwitchesDefault.c);
        Set<cin> set = jsonFeatureSwitchesDefault.b;
        if (set != null) {
            jsonGenerator.a("impressions");
            jsonGenerator.a();
            for (cin cin : set) {
                if (cin != null) {
                    LoganSquare.typeConverterFor(cin.class).serialize(cin, "lslocalimpressionsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
