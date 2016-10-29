package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.timeline.l;
import com.twitter.model.timeline.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonRecap$$JsonObjectMapper extends JsonMapper<JsonRecap> {
    public JsonRecap parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonRecap _parse(JsonParser jsonParser) throws IOException {
        JsonRecap jsonRecap = new JsonRecap();
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
            parseField(jsonRecap, e, jsonParser);
            jsonParser.c();
        }
        return jsonRecap;
    }

    public static void parseField(JsonRecap jsonRecap, String str, JsonParser jsonParser) throws IOException {
        if ("banner".equals(str)) {
            jsonRecap.e = JsonRecap$JsonBanner$$JsonObjectMapper._parse(jsonParser);
        } else if ("dismiss_info".equals(str)) {
            jsonRecap.d = (l) LoganSquare.typeConverterFor(l.class).parse(jsonParser);
        } else if ("footer".equals(str)) {
            jsonRecap.f = (p) LoganSquare.typeConverterFor(p.class).parse(jsonParser);
        } else if ("strings".equals(str)) {
            jsonRecap.c = JsonStrings$$JsonObjectMapper._parse(jsonParser);
        } else if ("suggests_info".equals(str)) {
            jsonRecap.b = JsonSuggestsInfo$$JsonObjectMapper._parse(jsonParser);
        } else if (!"tweets".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                jsonRecap.a = (String[]) arrayList.toArray(new String[arrayList.size()]);
                return;
            }
            jsonRecap.a = null;
        }
    }

    public void serialize(JsonRecap jsonRecap, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonRecap, jsonGenerator, z);
    }

    public static void _serialize(JsonRecap jsonRecap, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonRecap.e != null) {
            jsonGenerator.a("banner");
            JsonRecap$JsonBanner$$JsonObjectMapper._serialize(jsonRecap.e, jsonGenerator, true);
        }
        if (jsonRecap.d != null) {
            LoganSquare.typeConverterFor(l.class).serialize(jsonRecap.d, "dismiss_info", true, jsonGenerator);
        }
        if (jsonRecap.f != null) {
            LoganSquare.typeConverterFor(p.class).serialize(jsonRecap.f, "footer", true, jsonGenerator);
        }
        if (jsonRecap.c != null) {
            jsonGenerator.a("strings");
            JsonStrings$$JsonObjectMapper._serialize(jsonRecap.c, jsonGenerator, true);
        }
        if (jsonRecap.b != null) {
            jsonGenerator.a("suggests_info");
            JsonSuggestsInfo$$JsonObjectMapper._serialize(jsonRecap.b, jsonGenerator, true);
        }
        String[] strArr = jsonRecap.a;
        if (strArr != null) {
            jsonGenerator.a("tweets");
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
