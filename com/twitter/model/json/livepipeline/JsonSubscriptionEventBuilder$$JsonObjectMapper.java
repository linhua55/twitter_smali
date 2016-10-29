package com.twitter.model.json.livepipeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.livepipeline.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonSubscriptionEventBuilder$$JsonObjectMapper extends JsonMapper<JsonSubscriptionEventBuilder> {
    public JsonSubscriptionEventBuilder parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSubscriptionEventBuilder _parse(JsonParser jsonParser) throws IOException {
        JsonSubscriptionEventBuilder jsonSubscriptionEventBuilder = new JsonSubscriptionEventBuilder();
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
            parseField(jsonSubscriptionEventBuilder, e, jsonParser);
            jsonParser.c();
        }
        return jsonSubscriptionEventBuilder;
    }

    public static void parseField(JsonSubscriptionEventBuilder jsonSubscriptionEventBuilder, String str, JsonParser jsonParser) throws IOException {
        if (!"errors".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                g gVar = (g) LoganSquare.typeConverterFor(g.class).parse(jsonParser);
                if (gVar != null) {
                    arrayList.add(gVar);
                }
            }
            jsonSubscriptionEventBuilder.a = (g[]) arrayList.toArray(new g[arrayList.size()]);
            return;
        }
        jsonSubscriptionEventBuilder.a = null;
    }

    public void serialize(JsonSubscriptionEventBuilder jsonSubscriptionEventBuilder, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSubscriptionEventBuilder, jsonGenerator, z);
    }

    public static void _serialize(JsonSubscriptionEventBuilder jsonSubscriptionEventBuilder, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        g[] gVarArr = jsonSubscriptionEventBuilder.a;
        if (gVarArr != null) {
            jsonGenerator.a("errors");
            jsonGenerator.a();
            for (Object obj : gVarArr) {
                if (obj != null) {
                    LoganSquare.typeConverterFor(g.class).serialize(obj, "lslocalerrorsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
