package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonHighlightTimeRange$$JsonObjectMapper extends JsonMapper<JsonHighlightTimeRange> {
    public JsonHighlightTimeRange parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonHighlightTimeRange _parse(JsonParser jsonParser) throws IOException {
        JsonHighlightTimeRange jsonHighlightTimeRange = new JsonHighlightTimeRange();
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
            parseField(jsonHighlightTimeRange, e, jsonParser);
            jsonParser.c();
        }
        return jsonHighlightTimeRange;
    }

    public static void parseField(JsonHighlightTimeRange jsonHighlightTimeRange, String str, JsonParser jsonParser) throws IOException {
        if ("since".equals(str)) {
            jsonHighlightTimeRange.a = jsonParser.p();
        } else if ("until".equals(str)) {
            jsonHighlightTimeRange.b = jsonParser.p();
        }
    }

    public void serialize(JsonHighlightTimeRange jsonHighlightTimeRange, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonHighlightTimeRange, jsonGenerator, z);
    }

    public static void _serialize(JsonHighlightTimeRange jsonHighlightTimeRange, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("since", jsonHighlightTimeRange.a);
        jsonGenerator.a("until", jsonHighlightTimeRange.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
