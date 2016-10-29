package com.twitter.model.json.ads;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.ads.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonAdsAccountPermission$$JsonObjectMapper extends JsonMapper<JsonAdsAccountPermission> {
    public JsonAdsAccountPermission parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAdsAccountPermission _parse(JsonParser jsonParser) throws IOException {
        JsonAdsAccountPermission jsonAdsAccountPermission = new JsonAdsAccountPermission();
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
            parseField(jsonAdsAccountPermission, e, jsonParser);
            jsonParser.c();
        }
        return jsonAdsAccountPermission;
    }

    public static void parseField(JsonAdsAccountPermission jsonAdsAccountPermission, String str, JsonParser jsonParser) throws IOException {
        if (!"promotableUsers".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.b) {
            Map hashMap = new HashMap();
            while (jsonParser.a() != JsonToken.c) {
                String g = jsonParser.g();
                jsonParser.a();
                if (jsonParser.d() == JsonToken.m) {
                    hashMap.put(g, null);
                } else if (jsonParser.d() == JsonToken.d) {
                    ArrayList arrayList = new ArrayList();
                    while (jsonParser.a() != JsonToken.e) {
                        a aVar = (a) LoganSquare.typeConverterFor(a.class).parse(jsonParser);
                        if (aVar != null) {
                            arrayList.add(aVar);
                        }
                    }
                    hashMap.put(g, arrayList);
                } else {
                    hashMap.put(g, null);
                }
            }
            jsonAdsAccountPermission.a = hashMap;
            return;
        }
        jsonAdsAccountPermission.a = null;
    }

    public void serialize(JsonAdsAccountPermission jsonAdsAccountPermission, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAdsAccountPermission, jsonGenerator, z);
    }

    public static void _serialize(JsonAdsAccountPermission jsonAdsAccountPermission, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Map map = jsonAdsAccountPermission.a;
        if (map != null) {
            jsonGenerator.a("promotableUsers");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else {
                    List<a> list = (List) entry.getValue();
                    if (list != null) {
                        jsonGenerator.a();
                        for (a aVar : list) {
                            if (aVar != null) {
                                LoganSquare.typeConverterFor(a.class).serialize(aVar, "lslocallslocalpromotableUsersElementElement", false, jsonGenerator);
                            }
                        }
                        jsonGenerator.b();
                    }
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
