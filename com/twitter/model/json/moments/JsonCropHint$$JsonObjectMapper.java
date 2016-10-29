package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.moments.i;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCropHint$$JsonObjectMapper extends JsonMapper<JsonCropHint> {
    public JsonCropHint parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCropHint _parse(JsonParser jsonParser) throws IOException {
        JsonCropHint jsonCropHint = new JsonCropHint();
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
            parseField(jsonCropHint, e, jsonParser);
            jsonParser.c();
        }
        return jsonCropHint;
    }

    public static void parseField(JsonCropHint jsonCropHint, String str, JsonParser jsonParser) throws IOException {
        if ("landscape_4_3".equals(str)) {
            jsonCropHint.d = (i) LoganSquare.typeConverterFor(i.class).parse(jsonParser);
        } else if ("portrait_3_4".equals(str)) {
            jsonCropHint.b = (i) LoganSquare.typeConverterFor(i.class).parse(jsonParser);
        } else if ("portrait_9_16".equals(str)) {
            jsonCropHint.c = (i) LoganSquare.typeConverterFor(i.class).parse(jsonParser);
        } else if ("square".equals(str)) {
            jsonCropHint.a = (i) LoganSquare.typeConverterFor(i.class).parse(jsonParser);
        }
    }

    public void serialize(JsonCropHint jsonCropHint, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCropHint, jsonGenerator, z);
    }

    public static void _serialize(JsonCropHint jsonCropHint, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonCropHint.d != null) {
            LoganSquare.typeConverterFor(i.class).serialize(jsonCropHint.d, "landscape_4_3", true, jsonGenerator);
        }
        if (jsonCropHint.b != null) {
            LoganSquare.typeConverterFor(i.class).serialize(jsonCropHint.b, "portrait_3_4", true, jsonGenerator);
        }
        if (jsonCropHint.c != null) {
            LoganSquare.typeConverterFor(i.class).serialize(jsonCropHint.c, "portrait_9_16", true, jsonGenerator);
        }
        if (jsonCropHint.a != null) {
            LoganSquare.typeConverterFor(i.class).serialize(jsonCropHint.a, "square", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
