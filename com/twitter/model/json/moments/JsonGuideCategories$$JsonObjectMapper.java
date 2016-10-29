package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonGuideCategories$$JsonObjectMapper extends JsonMapper<JsonGuideCategories> {
    public JsonGuideCategories parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGuideCategories _parse(JsonParser jsonParser) throws IOException {
        JsonGuideCategories jsonGuideCategories = new JsonGuideCategories();
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
            parseField(jsonGuideCategories, e, jsonParser);
            jsonParser.c();
        }
        return jsonGuideCategories;
    }

    public static void parseField(JsonGuideCategories jsonGuideCategories, String str, JsonParser jsonParser) throws IOException {
        if ("nav".equals(str)) {
            jsonGuideCategories.a = JsonNavigationBar$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonGuideCategories jsonGuideCategories, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGuideCategories, jsonGenerator, z);
    }

    public static void _serialize(JsonGuideCategories jsonGuideCategories, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonGuideCategories.a != null) {
            jsonGenerator.a("nav");
            JsonNavigationBar$$JsonObjectMapper._serialize(jsonGuideCategories.a, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
