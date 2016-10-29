package com.twitter.model.json.timeline.urt;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.timeline.aa;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineOperation$$JsonObjectMapper extends JsonMapper<JsonTimelineOperation> {
    public JsonTimelineOperation parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineOperation _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineOperation jsonTimelineOperation = new JsonTimelineOperation();
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
            parseField(jsonTimelineOperation, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineOperation;
    }

    public static void parseField(JsonTimelineOperation jsonTimelineOperation, String str, JsonParser jsonParser) throws IOException {
        if ("cursor".equals(str)) {
            jsonTimelineOperation.a = (aa) LoganSquare.typeConverterFor(aa.class).parse(jsonParser);
        }
    }

    public void serialize(JsonTimelineOperation jsonTimelineOperation, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineOperation, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineOperation jsonTimelineOperation, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTimelineOperation.a != null) {
            LoganSquare.typeConverterFor(aa.class).serialize(jsonTimelineOperation.a, "cursor", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
