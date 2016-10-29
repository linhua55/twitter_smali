package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.moments.t;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonNavigationBar$$JsonObjectMapper extends JsonMapper<JsonNavigationBar> {
    public JsonNavigationBar parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonNavigationBar _parse(JsonParser jsonParser) throws IOException {
        JsonNavigationBar jsonNavigationBar = new JsonNavigationBar();
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
            parseField(jsonNavigationBar, e, jsonParser);
            jsonParser.c();
        }
        return jsonNavigationBar;
    }

    public static void parseField(JsonNavigationBar jsonNavigationBar, String str, JsonParser jsonParser) throws IOException {
        if ("categories".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    t tVar = (t) LoganSquare.typeConverterFor(t.class).parse(jsonParser);
                    if (tVar != null) {
                        arrayList.add(tVar);
                    }
                }
                jsonNavigationBar.a = arrayList;
                return;
            }
            jsonNavigationBar.a = null;
        } else if ("default_category_id".equals(str)) {
            jsonNavigationBar.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonNavigationBar jsonNavigationBar, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonNavigationBar, jsonGenerator, z);
    }

    public static void _serialize(JsonNavigationBar jsonNavigationBar, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<t> list = jsonNavigationBar.a;
        if (list != null) {
            jsonGenerator.a("categories");
            jsonGenerator.a();
            for (t tVar : list) {
                if (tVar != null) {
                    LoganSquare.typeConverterFor(t.class).serialize(tVar, "lslocalcategoriesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("default_category_id", jsonNavigationBar.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
