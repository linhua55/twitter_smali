package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.timeline.JsonStrings$$JsonObjectMapper;
import com.twitter.model.json.timeline.JsonSuggestsInfo$$JsonObjectMapper;
import com.twitter.model.timeline.l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonSuggestedMomentsInjection$$JsonObjectMapper extends JsonMapper<JsonSuggestedMomentsInjection> {
    public JsonSuggestedMomentsInjection parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSuggestedMomentsInjection _parse(JsonParser jsonParser) throws IOException {
        JsonSuggestedMomentsInjection jsonSuggestedMomentsInjection = new JsonSuggestedMomentsInjection();
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
            parseField(jsonSuggestedMomentsInjection, e, jsonParser);
            jsonParser.c();
        }
        return jsonSuggestedMomentsInjection;
    }

    public static void parseField(JsonSuggestedMomentsInjection jsonSuggestedMomentsInjection, String str, JsonParser jsonParser) throws IOException {
        if ("dismiss_info".equals(str)) {
            jsonSuggestedMomentsInjection.e = (l) LoganSquare.typeConverterFor(l.class).parse(jsonParser);
        } else if ("impression_id".equals(str)) {
            jsonSuggestedMomentsInjection.g = jsonParser.p();
        } else if ("mci_type".equals(str)) {
            jsonSuggestedMomentsInjection.b = jsonParser.a(null);
        } else if ("moments".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    Object valueOf = jsonParser.d() == JsonToken.m ? null : Long.valueOf(jsonParser.p());
                    if (valueOf != null) {
                        arrayList.add(valueOf);
                    }
                }
                jsonSuggestedMomentsInjection.a = arrayList;
                return;
            }
            jsonSuggestedMomentsInjection.a = null;
        } else if ("moments_info".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                Map hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    String g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, JsonMomentModule$$JsonObjectMapper._parse(jsonParser));
                    }
                }
                jsonSuggestedMomentsInjection.d = hashMap;
                return;
            }
            jsonSuggestedMomentsInjection.d = null;
        } else if ("strings".equals(str)) {
            jsonSuggestedMomentsInjection.f = JsonStrings$$JsonObjectMapper._parse(jsonParser);
        } else if ("suggests_info".equals(str)) {
            jsonSuggestedMomentsInjection.c = JsonSuggestsInfo$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonSuggestedMomentsInjection jsonSuggestedMomentsInjection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSuggestedMomentsInjection, jsonGenerator, z);
    }

    public static void _serialize(JsonSuggestedMomentsInjection jsonSuggestedMomentsInjection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonSuggestedMomentsInjection.e != null) {
            LoganSquare.typeConverterFor(l.class).serialize(jsonSuggestedMomentsInjection.e, "dismiss_info", true, jsonGenerator);
        }
        jsonGenerator.a("impression_id", jsonSuggestedMomentsInjection.g);
        jsonGenerator.a("mci_type", jsonSuggestedMomentsInjection.b);
        List<Long> list = jsonSuggestedMomentsInjection.a;
        if (list != null) {
            jsonGenerator.a("moments");
            jsonGenerator.a();
            for (Long longValue : list) {
                jsonGenerator.a(longValue.longValue());
            }
            jsonGenerator.b();
        }
        Map map = jsonSuggestedMomentsInjection.d;
        if (map != null) {
            jsonGenerator.a("moments_info");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    JsonMomentModule$$JsonObjectMapper._serialize((JsonMomentModule) entry.getValue(), jsonGenerator, true);
                }
            }
            jsonGenerator.d();
        }
        if (jsonSuggestedMomentsInjection.f != null) {
            jsonGenerator.a("strings");
            JsonStrings$$JsonObjectMapper._serialize(jsonSuggestedMomentsInjection.f, jsonGenerator, true);
        }
        if (jsonSuggestedMomentsInjection.c != null) {
            jsonGenerator.a("suggests_info");
            JsonSuggestsInfo$$JsonObjectMapper._serialize(jsonSuggestedMomentsInjection.c, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
