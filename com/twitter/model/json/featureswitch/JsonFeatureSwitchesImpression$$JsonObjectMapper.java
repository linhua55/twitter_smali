package com.twitter.model.json.featureswitch;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonFeatureSwitchesImpression$$JsonObjectMapper extends JsonMapper<JsonFeatureSwitchesImpression> {
    public JsonFeatureSwitchesImpression parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFeatureSwitchesImpression _parse(JsonParser jsonParser) throws IOException {
        JsonFeatureSwitchesImpression jsonFeatureSwitchesImpression = new JsonFeatureSwitchesImpression();
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
            parseField(jsonFeatureSwitchesImpression, e, jsonParser);
            jsonParser.c();
        }
        return jsonFeatureSwitchesImpression;
    }

    public static void parseField(JsonFeatureSwitchesImpression jsonFeatureSwitchesImpression, String str, JsonParser jsonParser) throws IOException {
        Integer num = null;
        if ("bucket".equals(str)) {
            jsonFeatureSwitchesImpression.b = jsonParser.a(null);
        } else if ("key".equals(str)) {
            jsonFeatureSwitchesImpression.a = jsonParser.a(null);
        } else if ("version".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                num = Integer.valueOf(jsonParser.o());
            }
            jsonFeatureSwitchesImpression.c = num;
        }
    }

    public void serialize(JsonFeatureSwitchesImpression jsonFeatureSwitchesImpression, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFeatureSwitchesImpression, jsonGenerator, z);
    }

    public static void _serialize(JsonFeatureSwitchesImpression jsonFeatureSwitchesImpression, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("bucket", jsonFeatureSwitchesImpression.b);
        jsonGenerator.a("key", jsonFeatureSwitchesImpression.a);
        jsonGenerator.a("version", jsonFeatureSwitchesImpression.c.intValue());
        if (z) {
            jsonGenerator.d();
        }
    }
}
