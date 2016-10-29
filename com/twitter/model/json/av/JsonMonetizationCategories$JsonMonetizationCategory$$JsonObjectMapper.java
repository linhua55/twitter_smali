package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.av.JsonMonetizationCategories.JsonMonetizationCategory;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMonetizationCategories$JsonMonetizationCategory$$JsonObjectMapper extends JsonMapper<JsonMonetizationCategory> {
    public JsonMonetizationCategory parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMonetizationCategory _parse(JsonParser jsonParser) throws IOException {
        JsonMonetizationCategory jsonMonetizationCategory = new JsonMonetizationCategory();
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
            parseField(jsonMonetizationCategory, e, jsonParser);
            jsonParser.c();
        }
        return jsonMonetizationCategory;
    }

    public static void parseField(JsonMonetizationCategory jsonMonetizationCategory, String str, JsonParser jsonParser) throws IOException {
        Integer num = null;
        if ("categoryDescription".equals(str)) {
            jsonMonetizationCategory.b = jsonParser.a(null);
        } else if ("categoryId".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                num = Integer.valueOf(jsonParser.o());
            }
            jsonMonetizationCategory.a = num;
        }
    }

    public void serialize(JsonMonetizationCategory jsonMonetizationCategory, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMonetizationCategory, jsonGenerator, z);
    }

    public static void _serialize(JsonMonetizationCategory jsonMonetizationCategory, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("categoryDescription", jsonMonetizationCategory.b);
        jsonGenerator.a("categoryId", jsonMonetizationCategory.a.intValue());
        if (z) {
            jsonGenerator.d();
        }
    }
}
