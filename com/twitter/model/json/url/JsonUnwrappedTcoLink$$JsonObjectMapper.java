package com.twitter.model.json.url;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonUnwrappedTcoLink$$JsonObjectMapper extends JsonMapper<JsonUnwrappedTcoLink> {
    public JsonUnwrappedTcoLink parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUnwrappedTcoLink _parse(JsonParser jsonParser) throws IOException {
        JsonUnwrappedTcoLink jsonUnwrappedTcoLink = new JsonUnwrappedTcoLink();
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
            parseField(jsonUnwrappedTcoLink, e, jsonParser);
            jsonParser.c();
        }
        return jsonUnwrappedTcoLink;
    }

    public static void parseField(JsonUnwrappedTcoLink jsonUnwrappedTcoLink, String str, JsonParser jsonParser) throws IOException {
        Long l = null;
        if ("first_url".equals(str)) {
            jsonUnwrappedTcoLink.b = jsonParser.a(null);
        } else if ("resolution".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                jsonUnwrappedTcoLink.c = arrayList;
                return;
            }
            jsonUnwrappedTcoLink.c = null;
        } else if ("status".equals(str)) {
            jsonUnwrappedTcoLink.d = jsonParser.a(null);
        } else if ("tco".equals(str)) {
            jsonUnwrappedTcoLink.a = jsonParser.a(null);
        } else if ("ttl_msec".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                l = Long.valueOf(jsonParser.p());
            }
            jsonUnwrappedTcoLink.e = l;
        }
    }

    public void serialize(JsonUnwrappedTcoLink jsonUnwrappedTcoLink, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUnwrappedTcoLink, jsonGenerator, z);
    }

    public static void _serialize(JsonUnwrappedTcoLink jsonUnwrappedTcoLink, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("first_url", jsonUnwrappedTcoLink.b);
        List<String> list = jsonUnwrappedTcoLink.c;
        if (list != null) {
            jsonGenerator.a("resolution");
            jsonGenerator.a();
            for (String b : list) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("status", jsonUnwrappedTcoLink.d);
        jsonGenerator.a("tco", jsonUnwrappedTcoLink.a);
        jsonGenerator.a("ttl_msec", jsonUnwrappedTcoLink.e.longValue());
        if (z) {
            jsonGenerator.d();
        }
    }
}
