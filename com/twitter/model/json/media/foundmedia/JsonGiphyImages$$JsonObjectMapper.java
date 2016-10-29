package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.media.foundmedia.p;
import com.twitter.model.media.foundmedia.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonGiphyImages$$JsonObjectMapper extends JsonMapper<JsonGiphyImages> {
    public JsonGiphyImages parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGiphyImages _parse(JsonParser jsonParser) throws IOException {
        JsonGiphyImages jsonGiphyImages = new JsonGiphyImages();
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
            parseField(jsonGiphyImages, e, jsonParser);
            jsonParser.c();
        }
        return jsonGiphyImages;
    }

    public static void parseField(JsonGiphyImages jsonGiphyImages, String str, JsonParser jsonParser) throws IOException {
        if ("data".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    p pVar = (p) LoganSquare.typeConverterFor(p.class).parse(jsonParser);
                    if (pVar != null) {
                        arrayList.add(pVar);
                    }
                }
                jsonGiphyImages.a = arrayList;
                return;
            }
            jsonGiphyImages.a = null;
        } else if ("pagination".equals(str)) {
            jsonGiphyImages.b = (r) LoganSquare.typeConverterFor(r.class).parse(jsonParser);
        }
    }

    public void serialize(JsonGiphyImages jsonGiphyImages, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGiphyImages, jsonGenerator, z);
    }

    public static void _serialize(JsonGiphyImages jsonGiphyImages, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<p> list = jsonGiphyImages.a;
        if (list != null) {
            jsonGenerator.a("data");
            jsonGenerator.a();
            for (p pVar : list) {
                if (pVar != null) {
                    LoganSquare.typeConverterFor(p.class).serialize(pVar, "lslocaldataElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (jsonGiphyImages.b != null) {
            LoganSquare.typeConverterFor(r.class).serialize(jsonGiphyImages.b, "pagination", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
