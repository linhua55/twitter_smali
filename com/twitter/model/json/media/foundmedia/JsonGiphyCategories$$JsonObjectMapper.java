package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.media.foundmedia.o;
import com.twitter.model.media.foundmedia.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonGiphyCategories$$JsonObjectMapper extends JsonMapper<JsonGiphyCategories> {
    public JsonGiphyCategories parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGiphyCategories _parse(JsonParser jsonParser) throws IOException {
        JsonGiphyCategories jsonGiphyCategories = new JsonGiphyCategories();
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
            parseField(jsonGiphyCategories, e, jsonParser);
            jsonParser.c();
        }
        return jsonGiphyCategories;
    }

    public static void parseField(JsonGiphyCategories jsonGiphyCategories, String str, JsonParser jsonParser) throws IOException {
        if ("data".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    o oVar = (o) LoganSquare.typeConverterFor(o.class).parse(jsonParser);
                    if (oVar != null) {
                        arrayList.add(oVar);
                    }
                }
                jsonGiphyCategories.a = arrayList;
                return;
            }
            jsonGiphyCategories.a = null;
        } else if ("pagination".equals(str)) {
            jsonGiphyCategories.b = (r) LoganSquare.typeConverterFor(r.class).parse(jsonParser);
        }
    }

    public void serialize(JsonGiphyCategories jsonGiphyCategories, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGiphyCategories, jsonGenerator, z);
    }

    public static void _serialize(JsonGiphyCategories jsonGiphyCategories, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<o> list = jsonGiphyCategories.a;
        if (list != null) {
            jsonGenerator.a("data");
            jsonGenerator.a();
            for (o oVar : list) {
                if (oVar != null) {
                    LoganSquare.typeConverterFor(o.class).serialize(oVar, "lslocaldataElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (jsonGiphyCategories.b != null) {
            LoganSquare.typeConverterFor(r.class).serialize(jsonGiphyCategories.b, "pagination", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
