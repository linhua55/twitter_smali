package com.twitter.model.json.moments;

import ckw;
import clx;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.moments.t;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonGuide$$JsonObjectMapper extends JsonMapper<JsonGuide> {
    public JsonGuide parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGuide _parse(JsonParser jsonParser) throws IOException {
        JsonGuide jsonGuide = new JsonGuide();
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
            parseField(jsonGuide, e, jsonParser);
            jsonParser.c();
        }
        return jsonGuide;
    }

    public static void parseField(JsonGuide jsonGuide, String str, JsonParser jsonParser) throws IOException {
        if ("category".equals(str)) {
            jsonGuide.b = (t) LoganSquare.typeConverterFor(t.class).parse(jsonParser);
        } else if ("impression_id".equals(str)) {
            jsonGuide.e = jsonParser.p();
        } else if ("modules".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    ckw ckw = (ckw) LoganSquare.typeConverterFor(ckw.class).parse(jsonParser);
                    if (ckw != null) {
                        arrayList.add(ckw);
                    }
                }
                jsonGuide.c = arrayList;
                return;
            }
            jsonGuide.c = null;
        } else if ("nav".equals(str)) {
            jsonGuide.a = JsonNavigationBar$$JsonObjectMapper._parse(jsonParser);
        } else if ("scroll_cursor".equals(str)) {
            jsonGuide.f = jsonParser.a(null);
        } else if ("sports".equals(str)) {
            jsonGuide.d = (clx) LoganSquare.typeConverterFor(clx.class).parse(jsonParser);
        }
    }

    public void serialize(JsonGuide jsonGuide, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGuide, jsonGenerator, z);
    }

    public static void _serialize(JsonGuide jsonGuide, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonGuide.b != null) {
            LoganSquare.typeConverterFor(t.class).serialize(jsonGuide.b, "category", true, jsonGenerator);
        }
        jsonGenerator.a("impression_id", jsonGuide.e);
        List<ckw> list = jsonGuide.c;
        if (list != null) {
            jsonGenerator.a("modules");
            jsonGenerator.a();
            for (ckw ckw : list) {
                if (ckw != null) {
                    LoganSquare.typeConverterFor(ckw.class).serialize(ckw, "lslocalmodulesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (jsonGuide.a != null) {
            jsonGenerator.a("nav");
            JsonNavigationBar$$JsonObjectMapper._serialize(jsonGuide.a, jsonGenerator, true);
        }
        jsonGenerator.a("scroll_cursor", jsonGuide.f);
        if (jsonGuide.d != null) {
            LoganSquare.typeConverterFor(clx.class).serialize(jsonGuide.d, "sports", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
