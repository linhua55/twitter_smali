package com.twitter.model.json.featureswitch;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonSettingVersionDetails$$JsonObjectMapper extends JsonMapper<JsonSettingVersionDetails> {
    public JsonSettingVersionDetails parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSettingVersionDetails _parse(JsonParser jsonParser) throws IOException {
        JsonSettingVersionDetails jsonSettingVersionDetails = new JsonSettingVersionDetails();
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
            parseField(jsonSettingVersionDetails, e, jsonParser);
            jsonParser.c();
        }
        return jsonSettingVersionDetails;
    }

    public static void parseField(JsonSettingVersionDetails jsonSettingVersionDetails, String str, JsonParser jsonParser) throws IOException {
        if ("experiments".equals(str)) {
            jsonSettingVersionDetails.a = jsonParser.a(null);
        } else if ("feature_switches".equals(str)) {
            jsonSettingVersionDetails.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonSettingVersionDetails jsonSettingVersionDetails, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSettingVersionDetails, jsonGenerator, z);
    }

    public static void _serialize(JsonSettingVersionDetails jsonSettingVersionDetails, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("experiments", jsonSettingVersionDetails.a);
        jsonGenerator.a("feature_switches", jsonSettingVersionDetails.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
