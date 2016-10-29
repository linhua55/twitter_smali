package com.twitter.model.json.pc;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonUserName;
import com.twitter.model.json.core.JsonUserName$$JsonObjectMapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: Twttr */
public final class JsonPromotedContent$$JsonObjectMapper extends JsonMapper<JsonPromotedContent> {
    public JsonPromotedContent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPromotedContent _parse(JsonParser jsonParser) throws IOException {
        JsonPromotedContent jsonPromotedContent = new JsonPromotedContent();
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
            parseField(jsonPromotedContent, e, jsonParser);
            jsonParser.c();
        }
        return jsonPromotedContent;
    }

    public static void parseField(JsonPromotedContent jsonPromotedContent, String str, JsonParser jsonParser) throws IOException {
        if ("advertiser".equals(str)) {
            jsonPromotedContent.f = JsonPromotedContent$PromotedContentAdvertiser$$JsonObjectMapper._parse(jsonParser);
        } else if ("advertiser_name".equals(str)) {
            jsonPromotedContent.c = jsonParser.a(null);
        } else if ("dedupe_ids".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                Set hashSet = new HashSet();
                while (jsonParser.a() != JsonToken.e) {
                    r1 = jsonParser.a(null);
                    if (r1 != null) {
                        hashSet.add(r1);
                    }
                }
                jsonPromotedContent.j = hashSet;
                return;
            }
            jsonPromotedContent.j = null;
        } else if ("disclosure_type".equals(str)) {
            jsonPromotedContent.b = jsonParser.a(null);
        } else if ("experiment_values".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                Map hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    r1 = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(r1, null);
                    } else {
                        hashMap.put(r1, jsonParser.a(null));
                    }
                }
                jsonPromotedContent.e = hashMap;
                return;
            }
            jsonPromotedContent.e = null;
        } else if ("impression_id".equals(str)) {
            jsonPromotedContent.a = jsonParser.a(null);
        } else if ("promoted_context".equals(str)) {
            jsonPromotedContent.h = JsonPromotedContent$PromotedContext$$JsonObjectMapper._parse(jsonParser);
        } else if ("promoted_trend".equals(str)) {
            jsonPromotedContent.g = JsonPromotedContent$PromotedContentTrend$$JsonObjectMapper._parse(jsonParser);
        } else if ("promoted_trend_id".equals(str)) {
            jsonPromotedContent.d = jsonParser.p();
        } else if (!"social_context".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    JsonUserName _parse = JsonUserName$$JsonObjectMapper._parse(jsonParser);
                    if (_parse != null) {
                        arrayList.add(_parse);
                    }
                }
                jsonPromotedContent.i = (JsonUserName[]) arrayList.toArray(new JsonUserName[arrayList.size()]);
                return;
            }
            jsonPromotedContent.i = null;
        }
    }

    public void serialize(JsonPromotedContent jsonPromotedContent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPromotedContent, jsonGenerator, z);
    }

    public static void _serialize(JsonPromotedContent jsonPromotedContent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonPromotedContent.f != null) {
            jsonGenerator.a("advertiser");
            JsonPromotedContent$PromotedContentAdvertiser$$JsonObjectMapper._serialize(jsonPromotedContent.f, jsonGenerator, true);
        }
        jsonGenerator.a("advertiser_name", jsonPromotedContent.c);
        Set<String> set = jsonPromotedContent.j;
        if (set != null) {
            jsonGenerator.a("dedupe_ids");
            jsonGenerator.a();
            for (String b : set) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("disclosure_type", jsonPromotedContent.b);
        Map map = jsonPromotedContent.e;
        if (map != null) {
            jsonGenerator.a("experiment_values");
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
        jsonGenerator.a("impression_id", jsonPromotedContent.a);
        if (jsonPromotedContent.h != null) {
            jsonGenerator.a("promoted_context");
            JsonPromotedContent$PromotedContext$$JsonObjectMapper._serialize(jsonPromotedContent.h, jsonGenerator, true);
        }
        if (jsonPromotedContent.g != null) {
            jsonGenerator.a("promoted_trend");
            JsonPromotedContent$PromotedContentTrend$$JsonObjectMapper._serialize(jsonPromotedContent.g, jsonGenerator, true);
        }
        jsonGenerator.a("promoted_trend_id", jsonPromotedContent.d);
        JsonUserName[] jsonUserNameArr = jsonPromotedContent.i;
        if (jsonUserNameArr != null) {
            jsonGenerator.a("social_context");
            jsonGenerator.a();
            for (JsonUserName jsonUserName : jsonUserNameArr) {
                if (jsonUserName != null) {
                    JsonUserName$$JsonObjectMapper._serialize(jsonUserName, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
