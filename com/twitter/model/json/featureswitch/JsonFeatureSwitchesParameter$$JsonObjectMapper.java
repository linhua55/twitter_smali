package com.twitter.model.json.featureswitch;

import ciu;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonFeatureSwitchesParameter$$JsonObjectMapper extends JsonMapper<JsonFeatureSwitchesParameter> {
    public JsonFeatureSwitchesParameter parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFeatureSwitchesParameter _parse(JsonParser jsonParser) throws IOException {
        JsonFeatureSwitchesParameter jsonFeatureSwitchesParameter = new JsonFeatureSwitchesParameter();
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
            parseField(jsonFeatureSwitchesParameter, e, jsonParser);
            jsonParser.c();
        }
        return jsonFeatureSwitchesParameter;
    }

    public static void parseField(JsonFeatureSwitchesParameter jsonFeatureSwitchesParameter, String str, JsonParser jsonParser) throws IOException {
        if ("default".equals(str)) {
            jsonFeatureSwitchesParameter.b = JsonFeatureSwitchesValueObject$$JsonObjectMapper._parse(jsonParser);
        } else if ("enumeration_values".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    ciu ciu = (ciu) LoganSquare.typeConverterFor(ciu.class).parse(jsonParser);
                    if (ciu != null) {
                        arrayList.add(ciu);
                    }
                }
                jsonFeatureSwitchesParameter.c = arrayList;
                return;
            }
            jsonFeatureSwitchesParameter.c = null;
        } else if ("name".equals(str)) {
            jsonFeatureSwitchesParameter.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonFeatureSwitchesParameter jsonFeatureSwitchesParameter, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFeatureSwitchesParameter, jsonGenerator, z);
    }

    public static void _serialize(JsonFeatureSwitchesParameter jsonFeatureSwitchesParameter, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonFeatureSwitchesParameter.b != null) {
            jsonGenerator.a("default");
            JsonFeatureSwitchesValueObject$$JsonObjectMapper._serialize(jsonFeatureSwitchesParameter.b, jsonGenerator, true);
        }
        List<ciu> list = jsonFeatureSwitchesParameter.c;
        if (list != null) {
            jsonGenerator.a("enumeration_values");
            jsonGenerator.a();
            for (ciu ciu : list) {
                if (ciu != null) {
                    LoganSquare.typeConverterFor(ciu.class).serialize(ciu, "lslocalenumeration_valuesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("name", jsonFeatureSwitchesParameter.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
