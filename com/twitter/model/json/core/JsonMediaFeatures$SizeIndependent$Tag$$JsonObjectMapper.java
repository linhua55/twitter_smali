package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonMediaFeatures.SizeIndependent.Tag;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMediaFeatures$SizeIndependent$Tag$$JsonObjectMapper extends JsonMapper<Tag> {
    public Tag parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static Tag _parse(JsonParser jsonParser) throws IOException {
        Tag tag = new Tag();
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
            parseField(tag, e, jsonParser);
            jsonParser.c();
        }
        return tag;
    }

    public static void parseField(Tag tag, String str, JsonParser jsonParser) throws IOException {
        if ("name".equals(str)) {
            tag.b = jsonParser.a(null);
        } else if ("screen_name".equals(str)) {
            tag.c = jsonParser.a(null);
        } else if ("user_id".equals(str)) {
            tag.a = jsonParser.p();
        }
    }

    public void serialize(Tag tag, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(tag, jsonGenerator, z);
    }

    public static void _serialize(Tag tag, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("name", tag.b);
        jsonGenerator.a("screen_name", tag.c);
        jsonGenerator.a("user_id", tag.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
