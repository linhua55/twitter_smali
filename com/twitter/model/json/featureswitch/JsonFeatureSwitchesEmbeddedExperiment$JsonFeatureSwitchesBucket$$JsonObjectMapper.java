package com.twitter.model.json.featureswitch;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.featureswitch.JsonFeatureSwitchesEmbeddedExperiment.JsonFeatureSwitchesBucket;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonFeatureSwitchesEmbeddedExperiment$JsonFeatureSwitchesBucket$$JsonObjectMapper extends JsonMapper<JsonFeatureSwitchesBucket> {
    public JsonFeatureSwitchesBucket parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFeatureSwitchesBucket _parse(JsonParser jsonParser) throws IOException {
        JsonFeatureSwitchesBucket jsonFeatureSwitchesBucket = new JsonFeatureSwitchesBucket();
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
            parseField(jsonFeatureSwitchesBucket, e, jsonParser);
            jsonParser.c();
        }
        return jsonFeatureSwitchesBucket;
    }

    public static void parseField(JsonFeatureSwitchesBucket jsonFeatureSwitchesBucket, String str, JsonParser jsonParser) throws IOException {
        if ("name".equals(str)) {
            jsonFeatureSwitchesBucket.a = jsonParser.a(null);
        } else if ("offset".equals(str)) {
            jsonFeatureSwitchesBucket.b = jsonParser.o();
        }
    }

    public void serialize(JsonFeatureSwitchesBucket jsonFeatureSwitchesBucket, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFeatureSwitchesBucket, jsonGenerator, z);
    }

    public static void _serialize(JsonFeatureSwitchesBucket jsonFeatureSwitchesBucket, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("name", jsonFeatureSwitchesBucket.a);
        jsonGenerator.a("offset", jsonFeatureSwitchesBucket.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
