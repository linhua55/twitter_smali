package com.twitter.model.json.timeline.urt;

import cnu;
import cnv;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineResponse$$JsonObjectMapper extends JsonMapper<JsonTimelineResponse> {
    public JsonTimelineResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineResponse _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineResponse jsonTimelineResponse = new JsonTimelineResponse();
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
            parseField(jsonTimelineResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineResponse;
    }

    public static void parseField(JsonTimelineResponse jsonTimelineResponse, String str, JsonParser jsonParser) throws IOException {
        if ("globalObjects".equals(str)) {
            jsonTimelineResponse.a = (cnu) LoganSquare.typeConverterFor(cnu.class).parse(jsonParser);
        } else if ("timeline".equals(str)) {
            jsonTimelineResponse.b = (cnv) LoganSquare.typeConverterFor(cnv.class).parse(jsonParser);
        }
    }

    public void serialize(JsonTimelineResponse jsonTimelineResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineResponse jsonTimelineResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTimelineResponse.a != null) {
            LoganSquare.typeConverterFor(cnu.class).serialize(jsonTimelineResponse.a, "globalObjects", true, jsonGenerator);
        }
        if (jsonTimelineResponse.b != null) {
            LoganSquare.typeConverterFor(cnv.class).serialize(jsonTimelineResponse.b, "timeline", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
