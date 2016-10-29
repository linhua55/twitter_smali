package com.twitter.model.json.featureswitch;

import cik;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonFeatureSwitchesFacet$$JsonObjectMapper extends JsonMapper<JsonFeatureSwitchesFacet> {
    public JsonFeatureSwitchesFacet parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFeatureSwitchesFacet _parse(JsonParser jsonParser) throws IOException {
        JsonFeatureSwitchesFacet jsonFeatureSwitchesFacet = new JsonFeatureSwitchesFacet();
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
            parseField(jsonFeatureSwitchesFacet, e, jsonParser);
            jsonParser.c();
        }
        return jsonFeatureSwitchesFacet;
    }

    public static void parseField(JsonFeatureSwitchesFacet jsonFeatureSwitchesFacet, String str, JsonParser jsonParser) throws IOException {
        if ("description".equals(str)) {
            jsonFeatureSwitchesFacet.b = jsonParser.a(null);
        } else if ("name".equals(str)) {
            jsonFeatureSwitchesFacet.a = jsonParser.a(null);
        } else if ("owner".equals(str)) {
            jsonFeatureSwitchesFacet.c = jsonParser.a(null);
        } else if ("parameters".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cik cik = (cik) LoganSquare.typeConverterFor(cik.class).parse(jsonParser);
                    if (cik != null) {
                        arrayList.add(cik);
                    }
                }
                jsonFeatureSwitchesFacet.e = arrayList;
                return;
            }
            jsonFeatureSwitchesFacet.e = null;
        } else if ("requires_restart".equals(str)) {
            jsonFeatureSwitchesFacet.d = jsonParser.r();
        }
    }

    public void serialize(JsonFeatureSwitchesFacet jsonFeatureSwitchesFacet, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFeatureSwitchesFacet, jsonGenerator, z);
    }

    public static void _serialize(JsonFeatureSwitchesFacet jsonFeatureSwitchesFacet, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("description", jsonFeatureSwitchesFacet.b);
        jsonGenerator.a("name", jsonFeatureSwitchesFacet.a);
        jsonGenerator.a("owner", jsonFeatureSwitchesFacet.c);
        List<cik> list = jsonFeatureSwitchesFacet.e;
        if (list != null) {
            jsonGenerator.a("parameters");
            jsonGenerator.a();
            for (cik cik : list) {
                if (cik != null) {
                    LoganSquare.typeConverterFor(cik.class).serialize(cik, "lslocalparametersElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("requires_restart", jsonFeatureSwitchesFacet.d);
        if (z) {
            jsonGenerator.d();
        }
    }
}
