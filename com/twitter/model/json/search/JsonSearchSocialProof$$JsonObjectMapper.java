package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.search.JsonSearchSocialProof.Users;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonSearchSocialProof$$JsonObjectMapper extends JsonMapper<JsonSearchSocialProof> {
    public JsonSearchSocialProof parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSearchSocialProof _parse(JsonParser jsonParser) throws IOException {
        JsonSearchSocialProof jsonSearchSocialProof = new JsonSearchSocialProof();
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
            parseField(jsonSearchSocialProof, e, jsonParser);
            jsonParser.c();
        }
        return jsonSearchSocialProof;
    }

    public static void parseField(JsonSearchSocialProof jsonSearchSocialProof, String str, JsonParser jsonParser) throws IOException {
        if ("followed_by".equals(str)) {
            jsonSearchSocialProof.c = jsonParser.r();
        } else if ("following".equals(str)) {
            jsonSearchSocialProof.b = jsonParser.r();
        } else if (!"related_users".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.b) {
                Map hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    String g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, JsonSearchSocialProof$Users$$JsonObjectMapper._parse(jsonParser));
                    }
                }
                jsonSearchSocialProof.a = hashMap;
                return;
            }
            jsonSearchSocialProof.a = null;
        }
    }

    public void serialize(JsonSearchSocialProof jsonSearchSocialProof, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSearchSocialProof, jsonGenerator, z);
    }

    public static void _serialize(JsonSearchSocialProof jsonSearchSocialProof, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("followed_by", jsonSearchSocialProof.c);
        jsonGenerator.a("following", jsonSearchSocialProof.b);
        Map map = jsonSearchSocialProof.a;
        if (map != null) {
            jsonGenerator.a("related_users");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    JsonSearchSocialProof$Users$$JsonObjectMapper._serialize((Users) entry.getValue(), jsonGenerator, true);
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
