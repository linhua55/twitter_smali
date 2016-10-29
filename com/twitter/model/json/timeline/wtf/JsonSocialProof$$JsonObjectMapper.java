package com.twitter.model.json.timeline.wtf;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.b;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonSocialProof$$JsonObjectMapper extends JsonMapper<JsonSocialProof> {
    public JsonSocialProof parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSocialProof _parse(JsonParser jsonParser) throws IOException {
        JsonSocialProof jsonSocialProof = new JsonSocialProof();
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
            parseField(jsonSocialProof, e, jsonParser);
            jsonParser.c();
        }
        return jsonSocialProof;
    }

    public static void parseField(JsonSocialProof jsonSocialProof, String str, JsonParser jsonParser) throws IOException {
        if ("proof_type".equals(str)) {
            jsonSocialProof.a = (b) LoganSquare.typeConverterFor(b.class).parse(jsonParser);
        } else if (!"users".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                jsonSocialProof.b = (String[]) arrayList.toArray(new String[arrayList.size()]);
                return;
            }
            jsonSocialProof.b = null;
        }
    }

    public void serialize(JsonSocialProof jsonSocialProof, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSocialProof, jsonGenerator, z);
    }

    public static void _serialize(JsonSocialProof jsonSocialProof, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonSocialProof.a != null) {
            LoganSquare.typeConverterFor(b.class).serialize(jsonSocialProof.a, "proof_type", true, jsonGenerator);
        }
        String[] strArr = jsonSocialProof.b;
        if (strArr != null) {
            jsonGenerator.a("users");
            jsonGenerator.a();
            for (String b : strArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
