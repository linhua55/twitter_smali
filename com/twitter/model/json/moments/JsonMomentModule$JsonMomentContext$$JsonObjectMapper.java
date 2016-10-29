package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.moments.JsonMomentModule.JsonMomentContext;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonMomentModule$JsonMomentContext$$JsonObjectMapper extends JsonMapper<JsonMomentContext> {
    public JsonMomentContext parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMomentContext _parse(JsonParser jsonParser) throws IOException {
        JsonMomentContext jsonMomentContext = new JsonMomentContext();
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
            parseField(jsonMomentContext, e, jsonParser);
            jsonParser.c();
        }
        return jsonMomentContext;
    }

    public static void parseField(JsonMomentContext jsonMomentContext, String str, JsonParser jsonParser) throws IOException {
        if ("context_scribe_info".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                Map hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    String g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, jsonParser.a(null));
                    }
                }
                jsonMomentContext.b = hashMap;
                return;
            }
            jsonMomentContext.b = null;
        } else if ("context_string".equals(str)) {
            jsonMomentContext.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonMomentContext jsonMomentContext, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMomentContext, jsonGenerator, z);
    }

    public static void _serialize(JsonMomentContext jsonMomentContext, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Map map = jsonMomentContext.b;
        if (map != null) {
            jsonGenerator.a("context_scribe_info");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else {
                    jsonGenerator.b((String) entry.getValue());
                }
            }
            jsonGenerator.d();
        }
        jsonGenerator.a("context_string", jsonMomentContext.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
