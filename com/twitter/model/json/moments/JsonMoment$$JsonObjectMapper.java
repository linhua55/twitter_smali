package com.twitter.model.json.moments;

import cni;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.moments.a;
import com.twitter.model.moments.o;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonMoment$$JsonObjectMapper extends JsonMapper<JsonMoment> {
    public JsonMoment parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMoment _parse(JsonParser jsonParser) throws IOException {
        JsonMoment jsonMoment = new JsonMoment();
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
            parseField(jsonMoment, e, jsonParser);
            jsonParser.c();
        }
        return jsonMoment;
    }

    public static void parseField(JsonMoment jsonMoment, String str, JsonParser jsonParser) throws IOException {
        if ("author".equals(str)) {
            jsonMoment.n = (a) LoganSquare.typeConverterFor(a.class).parse(jsonParser);
        } else if ("can_subscribe".equals(str)) {
            jsonMoment.j = jsonParser.r();
        } else if ("capsule_contents_version".equals(str)) {
            jsonMoment.q = jsonParser.p();
        } else if ("description".equals(str)) {
            jsonMoment.c = jsonParser.a(null);
        } else if ("duration_string".equals(str)) {
            jsonMoment.i = jsonParser.a(null);
        } else if ("event".equals(str)) {
            jsonMoment.p = (o) LoganSquare.typeConverterFor(o.class).parse(jsonParser);
        } else if ("id".equals(str)) {
            jsonMoment.a = jsonParser.p();
        } else if ("is_live".equals(str)) {
            jsonMoment.d = jsonParser.r();
        } else if ("sensitive".equals(str)) {
            jsonMoment.e = jsonParser.r();
        } else if ("is_subscribed".equals(str)) {
            jsonMoment.k = jsonParser.r();
        } else if ("num_subscribers".equals(str)) {
            jsonMoment.l = jsonParser.o();
        } else if ("promoted_content".equals(str)) {
            jsonMoment.o = (cni) LoganSquare.typeConverterFor(cni.class).parse(jsonParser);
        } else if ("subcategory_favicon_url".equals(str)) {
            jsonMoment.g = jsonParser.a(null);
        } else if ("subcategory_string".equals(str)) {
            jsonMoment.f = jsonParser.a(null);
        } else if ("time_string".equals(str)) {
            jsonMoment.h = jsonParser.a(null);
        } else if ("title".equals(str)) {
            jsonMoment.b = jsonParser.a(null);
        } else if ("url".equals(str)) {
            jsonMoment.m = jsonParser.a(null);
        } else if (!"users".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.b) {
                Map hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    String g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser));
                    }
                }
                jsonMoment.r = hashMap;
                return;
            }
            jsonMoment.r = null;
        }
    }

    public void serialize(JsonMoment jsonMoment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMoment, jsonGenerator, z);
    }

    public static void _serialize(JsonMoment jsonMoment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonMoment.n != null) {
            LoganSquare.typeConverterFor(a.class).serialize(jsonMoment.n, "author", true, jsonGenerator);
        }
        jsonGenerator.a("can_subscribe", jsonMoment.j);
        jsonGenerator.a("capsule_contents_version", jsonMoment.q);
        jsonGenerator.a("description", jsonMoment.c);
        jsonGenerator.a("duration_string", jsonMoment.i);
        if (jsonMoment.p != null) {
            LoganSquare.typeConverterFor(o.class).serialize(jsonMoment.p, "event", true, jsonGenerator);
        }
        jsonGenerator.a("id", jsonMoment.a);
        jsonGenerator.a("is_live", jsonMoment.d);
        jsonGenerator.a("sensitive", jsonMoment.e);
        jsonGenerator.a("is_subscribed", jsonMoment.k);
        jsonGenerator.a("num_subscribers", jsonMoment.l);
        if (jsonMoment.o != null) {
            LoganSquare.typeConverterFor(cni.class).serialize(jsonMoment.o, "promoted_content", true, jsonGenerator);
        }
        jsonGenerator.a("subcategory_favicon_url", jsonMoment.g);
        jsonGenerator.a("subcategory_string", jsonMoment.f);
        jsonGenerator.a("time_string", jsonMoment.h);
        jsonGenerator.a("title", jsonMoment.b);
        jsonGenerator.a("url", jsonMoment.m);
        Map map = jsonMoment.r;
        if (map != null) {
            jsonGenerator.a("users");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    LoganSquare.typeConverterFor(TwitterUser.class).serialize(entry.getValue(), "lslocalusersElement", false, jsonGenerator);
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
