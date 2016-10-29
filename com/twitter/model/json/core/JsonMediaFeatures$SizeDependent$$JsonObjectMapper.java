package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonMediaFeatures.SizeDependent;
import com.twitter.model.json.core.JsonMediaFeatures.SizeDependent.Face;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMediaFeatures$SizeDependent$$JsonObjectMapper extends JsonMapper<SizeDependent> {
    public SizeDependent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static SizeDependent _parse(JsonParser jsonParser) throws IOException {
        SizeDependent sizeDependent = new SizeDependent();
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
            parseField(sizeDependent, e, jsonParser);
            jsonParser.c();
        }
        return sizeDependent;
    }

    public static void parseField(SizeDependent sizeDependent, String str, JsonParser jsonParser) throws IOException {
        if (!"faces".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                Face _parse = JsonMediaFeatures$SizeDependent$Face$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            sizeDependent.a = (Face[]) arrayList.toArray(new Face[arrayList.size()]);
            return;
        }
        sizeDependent.a = null;
    }

    public void serialize(SizeDependent sizeDependent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(sizeDependent, jsonGenerator, z);
    }

    public static void _serialize(SizeDependent sizeDependent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Face[] faceArr = sizeDependent.a;
        if (faceArr != null) {
            jsonGenerator.a("faces");
            jsonGenerator.a();
            for (Face face : faceArr) {
                if (face != null) {
                    JsonMediaFeatures$SizeDependent$Face$$JsonObjectMapper._serialize(face, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
