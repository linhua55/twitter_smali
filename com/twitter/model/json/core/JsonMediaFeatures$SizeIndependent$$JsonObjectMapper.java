package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonMediaFeatures.SizeIndependent;
import com.twitter.model.json.core.JsonMediaFeatures.SizeIndependent.Tag;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMediaFeatures$SizeIndependent$$JsonObjectMapper extends JsonMapper<SizeIndependent> {
    public SizeIndependent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static SizeIndependent _parse(JsonParser jsonParser) throws IOException {
        SizeIndependent sizeIndependent = new SizeIndependent();
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
            parseField(sizeIndependent, e, jsonParser);
            jsonParser.c();
        }
        return sizeIndependent;
    }

    public static void parseField(SizeIndependent sizeIndependent, String str, JsonParser jsonParser) throws IOException {
        if (!"tags".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                Tag _parse = JsonMediaFeatures$SizeIndependent$Tag$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            sizeIndependent.a = (Tag[]) arrayList.toArray(new Tag[arrayList.size()]);
            return;
        }
        sizeIndependent.a = null;
    }

    public void serialize(SizeIndependent sizeIndependent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(sizeIndependent, jsonGenerator, z);
    }

    public static void _serialize(SizeIndependent sizeIndependent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Tag[] tagArr = sizeIndependent.a;
        if (tagArr != null) {
            jsonGenerator.a("tags");
            jsonGenerator.a();
            for (Tag tag : tagArr) {
                if (tag != null) {
                    JsonMediaFeatures$SizeIndependent$Tag$$JsonObjectMapper._serialize(tag, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
