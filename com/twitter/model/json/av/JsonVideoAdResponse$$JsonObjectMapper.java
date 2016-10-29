package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.av.d;
import com.twitter.model.av.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonVideoAdResponse$$JsonObjectMapper extends JsonMapper<JsonVideoAdResponse> {
    public JsonVideoAdResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonVideoAdResponse _parse(JsonParser jsonParser) throws IOException {
        JsonVideoAdResponse jsonVideoAdResponse = new JsonVideoAdResponse();
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
            parseField(jsonVideoAdResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonVideoAdResponse;
    }

    public static void parseField(JsonVideoAdResponse jsonVideoAdResponse, String str, JsonParser jsonParser) throws IOException {
        if ("autoplay_blacklist".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                jsonVideoAdResponse.c = arrayList;
                return;
            }
            jsonVideoAdResponse.c = null;
        } else if ("prerolls".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                r1 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    i iVar = (i) LoganSquare.typeConverterFor(i.class).parse(jsonParser);
                    if (iVar != null) {
                        r1.add(iVar);
                    }
                }
                jsonVideoAdResponse.a = r1;
                return;
            }
            jsonVideoAdResponse.a = null;
        } else if (!"video_analytics_scribe".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                r1 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    d dVar = (d) LoganSquare.typeConverterFor(d.class).parse(jsonParser);
                    if (dVar != null) {
                        r1.add(dVar);
                    }
                }
                jsonVideoAdResponse.b = r1;
                return;
            }
            jsonVideoAdResponse.b = null;
        }
    }

    public void serialize(JsonVideoAdResponse jsonVideoAdResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonVideoAdResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonVideoAdResponse jsonVideoAdResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<String> list = jsonVideoAdResponse.c;
        if (list != null) {
            jsonGenerator.a("autoplay_blacklist");
            jsonGenerator.a();
            for (String b : list) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        List<i> list2 = jsonVideoAdResponse.a;
        if (list2 != null) {
            jsonGenerator.a("prerolls");
            jsonGenerator.a();
            for (i iVar : list2) {
                if (iVar != null) {
                    LoganSquare.typeConverterFor(i.class).serialize(iVar, "lslocalprerollsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        List<d> list3 = jsonVideoAdResponse.b;
        if (list3 != null) {
            jsonGenerator.a("video_analytics_scribe");
            jsonGenerator.a();
            for (d dVar : list3) {
                if (dVar != null) {
                    LoganSquare.typeConverterFor(d.class).serialize(dVar, "lslocalvideo_analytics_scribeElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
