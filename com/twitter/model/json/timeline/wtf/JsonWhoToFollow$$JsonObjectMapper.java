package com.twitter.model.json.timeline.wtf;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.timeline.JsonStrings$$JsonObjectMapper;
import com.twitter.model.json.timeline.JsonSuggestsInfo$$JsonObjectMapper;
import com.twitter.model.timeline.l;
import com.twitter.model.timeline.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonWhoToFollow$$JsonObjectMapper extends JsonMapper<JsonWhoToFollow> {
    public JsonWhoToFollow parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonWhoToFollow _parse(JsonParser jsonParser) throws IOException {
        JsonWhoToFollow jsonWhoToFollow = new JsonWhoToFollow();
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
            parseField(jsonWhoToFollow, e, jsonParser);
            jsonParser.c();
        }
        return jsonWhoToFollow;
    }

    public static void parseField(JsonWhoToFollow jsonWhoToFollow, String str, JsonParser jsonParser) throws IOException {
        if ("dismiss_info".equals(str)) {
            jsonWhoToFollow.g = (l) LoganSquare.typeConverterFor(l.class).parse(jsonParser);
        } else if ("footer".equals(str)) {
            jsonWhoToFollow.h = (p) LoganSquare.typeConverterFor(p.class).parse(jsonParser);
        } else if ("wtf_type".equals(str)) {
            jsonWhoToFollow.c = jsonParser.a(null);
        } else if ("social_proof".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                r0 = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    r1 = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        r0.put(r1, null);
                    } else {
                        r0.put(r1, JsonSocialProof$$JsonObjectMapper._parse(jsonParser));
                    }
                }
                jsonWhoToFollow.d = r0;
                return;
            }
            jsonWhoToFollow.d = null;
        } else if ("strings".equals(str)) {
            jsonWhoToFollow.e = JsonStrings$$JsonObjectMapper._parse(jsonParser);
        } else if ("suggests_info".equals(str)) {
            jsonWhoToFollow.f = JsonSuggestsInfo$$JsonObjectMapper._parse(jsonParser);
        } else if ("tweets".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                r0 = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    r1 = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        r0.put(r1, null);
                    } else {
                        r0.put(r1, jsonParser.a(null));
                    }
                }
                jsonWhoToFollow.b = r0;
                return;
            }
            jsonWhoToFollow.b = null;
        } else if (!"users".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    r1 = jsonParser.a(null);
                    if (r1 != null) {
                        arrayList.add(r1);
                    }
                }
                jsonWhoToFollow.a = (String[]) arrayList.toArray(new String[arrayList.size()]);
                return;
            }
            jsonWhoToFollow.a = null;
        }
    }

    public void serialize(JsonWhoToFollow jsonWhoToFollow, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonWhoToFollow, jsonGenerator, z);
    }

    public static void _serialize(JsonWhoToFollow jsonWhoToFollow, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonWhoToFollow.g != null) {
            LoganSquare.typeConverterFor(l.class).serialize(jsonWhoToFollow.g, "dismiss_info", true, jsonGenerator);
        }
        if (jsonWhoToFollow.h != null) {
            LoganSquare.typeConverterFor(p.class).serialize(jsonWhoToFollow.h, "footer", true, jsonGenerator);
        }
        jsonGenerator.a("wtf_type", jsonWhoToFollow.c);
        Map map = jsonWhoToFollow.d;
        if (map != null) {
            jsonGenerator.a("social_proof");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    JsonSocialProof$$JsonObjectMapper._serialize((JsonSocialProof) entry.getValue(), jsonGenerator, true);
                }
            }
            jsonGenerator.d();
        }
        if (jsonWhoToFollow.e != null) {
            jsonGenerator.a("strings");
            JsonStrings$$JsonObjectMapper._serialize(jsonWhoToFollow.e, jsonGenerator, true);
        }
        if (jsonWhoToFollow.f != null) {
            jsonGenerator.a("suggests_info");
            JsonSuggestsInfo$$JsonObjectMapper._serialize(jsonWhoToFollow.f, jsonGenerator, true);
        }
        map = jsonWhoToFollow.b;
        if (map != null) {
            jsonGenerator.a("tweets");
            jsonGenerator.c();
            for (Entry entry2 : map.entrySet()) {
                jsonGenerator.a(((String) entry2.getKey()).toString());
                if (entry2.getValue() == null) {
                    jsonGenerator.e();
                } else {
                    jsonGenerator.b((String) entry2.getValue());
                }
            }
            jsonGenerator.d();
        }
        String[] strArr = jsonWhoToFollow.a;
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
