package com.twitter.model.json.featureswitch;

import cig;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonFeatureSwitchesEmbeddedExperiment$$JsonObjectMapper extends JsonMapper<JsonFeatureSwitchesEmbeddedExperiment> {
    public JsonFeatureSwitchesEmbeddedExperiment parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFeatureSwitchesEmbeddedExperiment _parse(JsonParser jsonParser) throws IOException {
        JsonFeatureSwitchesEmbeddedExperiment jsonFeatureSwitchesEmbeddedExperiment = new JsonFeatureSwitchesEmbeddedExperiment();
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
            parseField(jsonFeatureSwitchesEmbeddedExperiment, e, jsonParser);
            jsonParser.c();
        }
        return jsonFeatureSwitchesEmbeddedExperiment;
    }

    public static void parseField(JsonFeatureSwitchesEmbeddedExperiment jsonFeatureSwitchesEmbeddedExperiment, String str, JsonParser jsonParser) throws IOException {
        if ("buckets".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cig cig = (cig) LoganSquare.typeConverterFor(cig.class).parse(jsonParser);
                    if (cig != null) {
                        arrayList.add(cig);
                    }
                }
                jsonFeatureSwitchesEmbeddedExperiment.c = arrayList;
                return;
            }
            jsonFeatureSwitchesEmbeddedExperiment.c = null;
        } else if ("end_time".equals(str)) {
            jsonFeatureSwitchesEmbeddedExperiment.e = jsonParser.a(null);
        } else if ("name".equals(str)) {
            jsonFeatureSwitchesEmbeddedExperiment.a = jsonParser.a(null);
        } else if ("start_time".equals(str)) {
            jsonFeatureSwitchesEmbeddedExperiment.d = jsonParser.a(null);
        } else if ("version".equals(str)) {
            jsonFeatureSwitchesEmbeddedExperiment.b = jsonParser.o();
        }
    }

    public void serialize(JsonFeatureSwitchesEmbeddedExperiment jsonFeatureSwitchesEmbeddedExperiment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFeatureSwitchesEmbeddedExperiment, jsonGenerator, z);
    }

    public static void _serialize(JsonFeatureSwitchesEmbeddedExperiment jsonFeatureSwitchesEmbeddedExperiment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cig> list = jsonFeatureSwitchesEmbeddedExperiment.c;
        if (list != null) {
            jsonGenerator.a("buckets");
            jsonGenerator.a();
            for (cig cig : list) {
                if (cig != null) {
                    LoganSquare.typeConverterFor(cig.class).serialize(cig, "lslocalbucketsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("end_time", jsonFeatureSwitchesEmbeddedExperiment.e);
        jsonGenerator.a("name", jsonFeatureSwitchesEmbeddedExperiment.a);
        jsonGenerator.a("start_time", jsonFeatureSwitchesEmbeddedExperiment.d);
        jsonGenerator.a("version", jsonFeatureSwitchesEmbeddedExperiment.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
