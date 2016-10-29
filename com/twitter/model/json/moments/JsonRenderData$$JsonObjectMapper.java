package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.moments.ax;
import com.twitter.model.moments.m;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonRenderData$$JsonObjectMapper extends JsonMapper<JsonRenderData> {
    public JsonRenderData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonRenderData _parse(JsonParser jsonParser) throws IOException {
        JsonRenderData jsonRenderData = new JsonRenderData();
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
            parseField(jsonRenderData, e, jsonParser);
            jsonParser.c();
        }
        return jsonRenderData;
    }

    public static void parseField(JsonRenderData jsonRenderData, String str, JsonParser jsonParser) throws IOException {
        if ("crops".equals(str)) {
            jsonRenderData.a = (m) LoganSquare.typeConverterFor(m.class).parse(jsonParser);
        } else if ("no_crop".equals(str)) {
            jsonRenderData.c = jsonParser.r();
        } else if ("theme".equals(str)) {
            jsonRenderData.b = (ax) LoganSquare.typeConverterFor(ax.class).parse(jsonParser);
        }
    }

    public void serialize(JsonRenderData jsonRenderData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonRenderData, jsonGenerator, z);
    }

    public static void _serialize(JsonRenderData jsonRenderData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonRenderData.a != null) {
            LoganSquare.typeConverterFor(m.class).serialize(jsonRenderData.a, "crops", true, jsonGenerator);
        }
        jsonGenerator.a("no_crop", jsonRenderData.c);
        if (jsonRenderData.b != null) {
            LoganSquare.typeConverterFor(ax.class).serialize(jsonRenderData.b, "theme", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
