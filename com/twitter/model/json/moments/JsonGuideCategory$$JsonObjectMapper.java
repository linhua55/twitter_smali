package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonGuideCategory$$JsonObjectMapper extends JsonMapper<JsonGuideCategory> {
    public JsonGuideCategory parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGuideCategory _parse(JsonParser jsonParser) throws IOException {
        JsonGuideCategory jsonGuideCategory = new JsonGuideCategory();
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
            parseField(jsonGuideCategory, e, jsonParser);
            jsonParser.c();
        }
        return jsonGuideCategory;
    }

    public static void parseField(JsonGuideCategory jsonGuideCategory, String str, JsonParser jsonParser) throws IOException {
        if ("category_id".equals(str)) {
            jsonGuideCategory.a = jsonParser.a(null);
        } else if ("name".equals(str)) {
            jsonGuideCategory.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonGuideCategory jsonGuideCategory, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGuideCategory, jsonGenerator, z);
    }

    public static void _serialize(JsonGuideCategory jsonGuideCategory, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("category_id", jsonGuideCategory.a);
        jsonGenerator.a("name", jsonGuideCategory.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
