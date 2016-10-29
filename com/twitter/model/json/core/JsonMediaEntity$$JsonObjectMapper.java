package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.core.aj;
import com.twitter.model.stratostore.h;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMediaEntity$$JsonObjectMapper extends JsonMapper<JsonMediaEntity> {
    public JsonMediaEntity parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaEntity _parse(JsonParser jsonParser) throws IOException {
        JsonMediaEntity jsonMediaEntity = new JsonMediaEntity();
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
            parseField(jsonMediaEntity, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaEntity;
    }

    public static void parseField(JsonMediaEntity jsonMediaEntity, String str, JsonParser jsonParser) throws IOException {
        if ("additional_media_info".equals(str)) {
            jsonMediaEntity.o = JsonAdditionalMediaInfo$$JsonObjectMapper._parse(jsonParser);
        } else if ("display_url".equals(str)) {
            jsonMediaEntity.d = jsonParser.a(null);
        } else if ("expanded_url".equals(str)) {
            jsonMediaEntity.c = jsonParser.a(null);
        } else if ("ext".equals(str)) {
            jsonMediaEntity.q = (h) LoganSquare.typeConverterFor(h.class).parse(jsonParser);
        } else if ("features".equals(str)) {
            jsonMediaEntity.m = JsonMediaFeatures$$JsonObjectMapper._parse(jsonParser);
        } else if ("id".equals(str)) {
            jsonMediaEntity.f = jsonParser.p();
        } else if ("indices".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List<Integer> arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    arrayList.add(Integer.valueOf(jsonParser.o()));
                }
                int[] iArr = new int[arrayList.size()];
                int i = 0;
                for (Integer intValue : arrayList) {
                    int i2 = i + 1;
                    iArr[i] = intValue.intValue();
                    i = i2;
                }
                jsonMediaEntity.a = iArr;
                return;
            }
            jsonMediaEntity.a = null;
        } else if ("url".equals(str)) {
            jsonMediaEntity.e = jsonParser.a(null);
        } else if ("media_url".equals(str)) {
            jsonMediaEntity.i = jsonParser.a(null);
        } else if ("media_url_https".equals(str)) {
            jsonMediaEntity.h = jsonParser.a(null);
        } else if ("possibly_sensitive".equals(str)) {
            jsonMediaEntity.p = jsonParser.r();
        } else if ("sizes".equals(str)) {
            jsonMediaEntity.l = JsonMediaSizes$$JsonObjectMapper._parse(jsonParser);
        } else if ("source_status_id".equals(str)) {
            jsonMediaEntity.j = jsonParser.p();
        } else if ("source_user_id".equals(str)) {
            jsonMediaEntity.k = jsonParser.p();
        } else if ("type".equals(str)) {
            jsonMediaEntity.g = (Type) LoganSquare.typeConverterFor(Type.class).parse(jsonParser);
        } else if ("url_https".equals(str)) {
            jsonMediaEntity.b = jsonParser.a(null);
        } else if ("video_info".equals(str)) {
            jsonMediaEntity.n = (aj) LoganSquare.typeConverterFor(aj.class).parse(jsonParser);
        }
    }

    public void serialize(JsonMediaEntity jsonMediaEntity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaEntity, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaEntity jsonMediaEntity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonMediaEntity.o != null) {
            jsonGenerator.a("additional_media_info");
            JsonAdditionalMediaInfo$$JsonObjectMapper._serialize(jsonMediaEntity.o, jsonGenerator, true);
        }
        jsonGenerator.a("display_url", jsonMediaEntity.d);
        jsonGenerator.a("expanded_url", jsonMediaEntity.c);
        if (jsonMediaEntity.q != null) {
            LoganSquare.typeConverterFor(h.class).serialize(jsonMediaEntity.q, "ext", true, jsonGenerator);
        }
        if (jsonMediaEntity.m != null) {
            jsonGenerator.a("features");
            JsonMediaFeatures$$JsonObjectMapper._serialize(jsonMediaEntity.m, jsonGenerator, true);
        }
        jsonGenerator.a("id", jsonMediaEntity.f);
        int[] iArr = jsonMediaEntity.a;
        if (iArr != null) {
            jsonGenerator.a("indices");
            jsonGenerator.a();
            for (int b : iArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("url", jsonMediaEntity.e);
        jsonGenerator.a("media_url", jsonMediaEntity.i);
        jsonGenerator.a("media_url_https", jsonMediaEntity.h);
        jsonGenerator.a("possibly_sensitive", jsonMediaEntity.p);
        if (jsonMediaEntity.l != null) {
            jsonGenerator.a("sizes");
            JsonMediaSizes$$JsonObjectMapper._serialize(jsonMediaEntity.l, jsonGenerator, true);
        }
        jsonGenerator.a("source_status_id", jsonMediaEntity.j);
        jsonGenerator.a("source_user_id", jsonMediaEntity.k);
        if (jsonMediaEntity.g != null) {
            LoganSquare.typeConverterFor(Type.class).serialize(jsonMediaEntity.g, "type", true, jsonGenerator);
        }
        jsonGenerator.a("url_https", jsonMediaEntity.b);
        if (jsonMediaEntity.n != null) {
            LoganSquare.typeConverterFor(aj.class).serialize(jsonMediaEntity.n, "video_info", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
