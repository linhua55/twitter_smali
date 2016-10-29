package com.twitter.model.json.featureswitch;

import cij;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.featureswitch.JsonLocalFeatureSwitchesConfiguration.JsonFeatureSwitchesDebug;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonLocalFeatureSwitchesConfiguration$JsonFeatureSwitchesDebug$$JsonObjectMapper extends JsonMapper<JsonFeatureSwitchesDebug> {
    public JsonFeatureSwitchesDebug parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFeatureSwitchesDebug _parse(JsonParser jsonParser) throws IOException {
        JsonFeatureSwitchesDebug jsonFeatureSwitchesDebug = new JsonFeatureSwitchesDebug();
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
            parseField(jsonFeatureSwitchesDebug, e, jsonParser);
            jsonParser.c();
        }
        return jsonFeatureSwitchesDebug;
    }

    public static void parseField(JsonFeatureSwitchesDebug jsonFeatureSwitchesDebug, String str, JsonParser jsonParser) throws IOException {
        if (!"facets".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                cij cij = (cij) LoganSquare.typeConverterFor(cij.class).parse(jsonParser);
                if (cij != null) {
                    arrayList.add(cij);
                }
            }
            jsonFeatureSwitchesDebug.a = arrayList;
            return;
        }
        jsonFeatureSwitchesDebug.a = null;
    }

    public void serialize(JsonFeatureSwitchesDebug jsonFeatureSwitchesDebug, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFeatureSwitchesDebug, jsonGenerator, z);
    }

    public static void _serialize(JsonFeatureSwitchesDebug jsonFeatureSwitchesDebug, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cij> list = jsonFeatureSwitchesDebug.a;
        if (list != null) {
            jsonGenerator.a("facets");
            jsonGenerator.a();
            for (cij cij : list) {
                if (cij != null) {
                    LoganSquare.typeConverterFor(cij.class).serialize(cij, "lslocalfacetsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
