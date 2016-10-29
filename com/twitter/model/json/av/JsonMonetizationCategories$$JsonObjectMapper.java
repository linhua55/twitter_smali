package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.av.JsonMonetizationCategories.JsonMonetizationCategory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMonetizationCategories$$JsonObjectMapper extends JsonMapper<JsonMonetizationCategories> {
    public JsonMonetizationCategories parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMonetizationCategories _parse(JsonParser jsonParser) throws IOException {
        JsonMonetizationCategories jsonMonetizationCategories = new JsonMonetizationCategories();
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
            parseField(jsonMonetizationCategories, e, jsonParser);
            jsonParser.c();
        }
        return jsonMonetizationCategories;
    }

    public static void parseField(JsonMonetizationCategories jsonMonetizationCategories, String str, JsonParser jsonParser) throws IOException {
        if (!"monetizationCategories".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonMonetizationCategory _parse = JsonMonetizationCategories$JsonMonetizationCategory$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonMonetizationCategories.a = arrayList;
            return;
        }
        jsonMonetizationCategories.a = null;
    }

    public void serialize(JsonMonetizationCategories jsonMonetizationCategories, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMonetizationCategories, jsonGenerator, z);
    }

    public static void _serialize(JsonMonetizationCategories jsonMonetizationCategories, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonMonetizationCategory> list = jsonMonetizationCategories.a;
        if (list != null) {
            jsonGenerator.a("monetizationCategories");
            jsonGenerator.a();
            for (JsonMonetizationCategory jsonMonetizationCategory : list) {
                if (jsonMonetizationCategory != null) {
                    JsonMonetizationCategories$JsonMonetizationCategory$$JsonObjectMapper._serialize(jsonMonetizationCategory, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
