package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonRichTimelineResponseCursor$$JsonObjectMapper extends JsonMapper<JsonRichTimelineResponseCursor> {
    public JsonRichTimelineResponseCursor parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonRichTimelineResponseCursor _parse(JsonParser jsonParser) throws IOException {
        JsonRichTimelineResponseCursor jsonRichTimelineResponseCursor = new JsonRichTimelineResponseCursor();
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
            parseField(jsonRichTimelineResponseCursor, e, jsonParser);
            jsonParser.c();
        }
        return jsonRichTimelineResponseCursor;
    }

    public static void parseField(JsonRichTimelineResponseCursor jsonRichTimelineResponseCursor, String str, JsonParser jsonParser) throws IOException {
        if ("bottom".equals(str)) {
            jsonRichTimelineResponseCursor.b = jsonParser.a(null);
        } else if ("gaps".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                jsonRichTimelineResponseCursor.c = arrayList;
                return;
            }
            jsonRichTimelineResponseCursor.c = null;
        } else if ("top".equals(str)) {
            jsonRichTimelineResponseCursor.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonRichTimelineResponseCursor jsonRichTimelineResponseCursor, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonRichTimelineResponseCursor, jsonGenerator, z);
    }

    public static void _serialize(JsonRichTimelineResponseCursor jsonRichTimelineResponseCursor, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("bottom", jsonRichTimelineResponseCursor.b);
        List<String> list = jsonRichTimelineResponseCursor.c;
        if (list != null) {
            jsonGenerator.a("gaps");
            jsonGenerator.a();
            for (String b : list) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("top", jsonRichTimelineResponseCursor.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
