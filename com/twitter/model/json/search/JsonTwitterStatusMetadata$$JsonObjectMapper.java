package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.search.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterStatusMetadata$$JsonObjectMapper extends JsonMapper<JsonTwitterStatusMetadata> {
    public JsonTwitterStatusMetadata parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterStatusMetadata _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterStatusMetadata jsonTwitterStatusMetadata = new JsonTwitterStatusMetadata();
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
            parseField(jsonTwitterStatusMetadata, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterStatusMetadata;
    }

    public static void parseField(JsonTwitterStatusMetadata jsonTwitterStatusMetadata, String str, JsonParser jsonParser) throws IOException {
        if ("auto_expand".equals(str)) {
            jsonTwitterStatusMetadata.c = jsonParser.r();
        } else if ("highlight_context".equals(str)) {
            jsonTwitterStatusMetadata.g = JsonSearchHighlightContext$$JsonObjectMapper._parse(jsonParser);
        } else if ("highlight_time_range".equals(str)) {
            jsonTwitterStatusMetadata.i = JsonHighlightTimeRange$$JsonObjectMapper._parse(jsonParser);
        } else if ("highlight_type".equals(str)) {
            jsonTwitterStatusMetadata.b = jsonParser.a(null);
        } else if ("hit_highlights".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    a aVar = (a) LoganSquare.typeConverterFor(a.class).parse(jsonParser);
                    if (aVar != null) {
                        arrayList.add(aVar);
                    }
                }
                jsonTwitterStatusMetadata.e = arrayList;
                return;
            }
            jsonTwitterStatusMetadata.e = null;
        } else if ("pinned_to_top".equals(str)) {
            jsonTwitterStatusMetadata.d = jsonParser.r();
        } else if ("reason".equals(str)) {
            jsonTwitterStatusMetadata.h = JsonTwitterStatusReason$$JsonObjectMapper._parse(jsonParser);
        } else if ("result_type".equals(str)) {
            jsonTwitterStatusMetadata.a = jsonParser.a(null);
        } else if ("social_context".equals(str)) {
            jsonTwitterStatusMetadata.f = JsonSearchSocialProof$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonTwitterStatusMetadata jsonTwitterStatusMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterStatusMetadata, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterStatusMetadata jsonTwitterStatusMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("auto_expand", jsonTwitterStatusMetadata.c);
        if (jsonTwitterStatusMetadata.g != null) {
            jsonGenerator.a("highlight_context");
            JsonSearchHighlightContext$$JsonObjectMapper._serialize(jsonTwitterStatusMetadata.g, jsonGenerator, true);
        }
        if (jsonTwitterStatusMetadata.i != null) {
            jsonGenerator.a("highlight_time_range");
            JsonHighlightTimeRange$$JsonObjectMapper._serialize(jsonTwitterStatusMetadata.i, jsonGenerator, true);
        }
        jsonGenerator.a("highlight_type", jsonTwitterStatusMetadata.b);
        List<a> list = jsonTwitterStatusMetadata.e;
        if (list != null) {
            jsonGenerator.a("hit_highlights");
            jsonGenerator.a();
            for (a aVar : list) {
                if (aVar != null) {
                    LoganSquare.typeConverterFor(a.class).serialize(aVar, "lslocalhit_highlightsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("pinned_to_top", jsonTwitterStatusMetadata.d);
        if (jsonTwitterStatusMetadata.h != null) {
            jsonGenerator.a("reason");
            JsonTwitterStatusReason$$JsonObjectMapper._serialize(jsonTwitterStatusMetadata.h, jsonGenerator, true);
        }
        jsonGenerator.a("result_type", jsonTwitterStatusMetadata.a);
        if (jsonTwitterStatusMetadata.f != null) {
            jsonGenerator.a("social_context");
            JsonSearchSocialProof$$JsonObjectMapper._serialize(jsonTwitterStatusMetadata.f, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
