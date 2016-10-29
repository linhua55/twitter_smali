package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.EscherbirdAnnotation;
import com.twitter.model.core.bt;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTweetPivot$$JsonObjectMapper extends JsonMapper<JsonTweetPivot> {
    public JsonTweetPivot parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTweetPivot _parse(JsonParser jsonParser) throws IOException {
        JsonTweetPivot jsonTweetPivot = new JsonTweetPivot();
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
            parseField(jsonTweetPivot, e, jsonParser);
            jsonParser.c();
        }
        return jsonTweetPivot;
    }

    public static void parseField(JsonTweetPivot jsonTweetPivot, String str, JsonParser jsonParser) throws IOException {
        if ("annotation".equals(str)) {
            jsonTweetPivot.a = (EscherbirdAnnotation) LoganSquare.typeConverterFor(EscherbirdAnnotation.class).parse(jsonParser);
        } else if ("data".equals(str)) {
            jsonTweetPivot.b = (bt) LoganSquare.typeConverterFor(bt.class).parse(jsonParser);
        }
    }

    public void serialize(JsonTweetPivot jsonTweetPivot, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTweetPivot, jsonGenerator, z);
    }

    public static void _serialize(JsonTweetPivot jsonTweetPivot, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTweetPivot.a != null) {
            LoganSquare.typeConverterFor(EscherbirdAnnotation.class).serialize(jsonTweetPivot.a, "annotation", true, jsonGenerator);
        }
        if (jsonTweetPivot.b != null) {
            LoganSquare.typeConverterFor(bt.class).serialize(jsonTweetPivot.b, "data", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
