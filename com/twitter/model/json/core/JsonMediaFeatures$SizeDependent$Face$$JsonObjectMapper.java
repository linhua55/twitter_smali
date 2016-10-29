package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonMediaFeatures.SizeDependent.Face;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMediaFeatures$SizeDependent$Face$$JsonObjectMapper extends JsonMapper<Face> {
    public Face parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static Face _parse(JsonParser jsonParser) throws IOException {
        Face face = new Face();
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
            parseField(face, e, jsonParser);
            jsonParser.c();
        }
        return face;
    }

    public static void parseField(Face face, String str, JsonParser jsonParser) throws IOException {
        if ("h".equals(str)) {
            face.c = jsonParser.o();
        } else if ("w".equals(str)) {
            face.d = jsonParser.o();
        } else if ("x".equals(str)) {
            face.a = jsonParser.o();
        } else if ("y".equals(str)) {
            face.b = jsonParser.o();
        }
    }

    public void serialize(Face face, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(face, jsonGenerator, z);
    }

    public static void _serialize(Face face, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("h", face.c);
        jsonGenerator.a("w", face.d);
        jsonGenerator.a("x", face.a);
        jsonGenerator.a("y", face.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
