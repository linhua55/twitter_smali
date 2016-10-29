package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.b;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonSearchHighlightContext$$JsonObjectMapper extends JsonMapper<JsonSearchHighlightContext> {
    public JsonSearchHighlightContext parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSearchHighlightContext _parse(JsonParser jsonParser) throws IOException {
        JsonSearchHighlightContext jsonSearchHighlightContext = new JsonSearchHighlightContext();
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
            parseField(jsonSearchHighlightContext, e, jsonParser);
            jsonParser.c();
        }
        return jsonSearchHighlightContext;
    }

    public static void parseField(JsonSearchHighlightContext jsonSearchHighlightContext, String str, JsonParser jsonParser) throws IOException {
        if ("matched_trends".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                jsonSearchHighlightContext.b = (String[]) arrayList.toArray(new String[arrayList.size()]);
                return;
            }
            jsonSearchHighlightContext.b = null;
        } else if ("type".equals(str)) {
            jsonSearchHighlightContext.a = (b) LoganSquare.typeConverterFor(b.class).parse(jsonParser);
        }
    }

    public void serialize(JsonSearchHighlightContext jsonSearchHighlightContext, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSearchHighlightContext, jsonGenerator, z);
    }

    public static void _serialize(JsonSearchHighlightContext jsonSearchHighlightContext, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        String[] strArr = jsonSearchHighlightContext.b;
        if (strArr != null) {
            jsonGenerator.a("matched_trends");
            jsonGenerator.a();
            for (String b : strArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        if (jsonSearchHighlightContext.a != null) {
            LoganSquare.typeConverterFor(b.class).serialize(jsonSearchHighlightContext.a, "type", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
