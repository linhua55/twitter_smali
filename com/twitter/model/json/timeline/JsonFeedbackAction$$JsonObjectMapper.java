package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonFeedbackAction$$JsonObjectMapper extends JsonMapper<JsonFeedbackAction> {
    public JsonFeedbackAction parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFeedbackAction _parse(JsonParser jsonParser) throws IOException {
        JsonFeedbackAction jsonFeedbackAction = new JsonFeedbackAction();
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
            parseField(jsonFeedbackAction, e, jsonParser);
            jsonParser.c();
        }
        return jsonFeedbackAction;
    }

    public static void parseField(JsonFeedbackAction jsonFeedbackAction, String str, JsonParser jsonParser) throws IOException {
        if ("confirmation".equals(str)) {
            jsonFeedbackAction.c = jsonParser.a(null);
        } else if ("feedback_type".equals(str)) {
            jsonFeedbackAction.a = jsonParser.a(null);
        } else if ("prompt".equals(str)) {
            jsonFeedbackAction.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonFeedbackAction jsonFeedbackAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFeedbackAction, jsonGenerator, z);
    }

    public static void _serialize(JsonFeedbackAction jsonFeedbackAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("confirmation", jsonFeedbackAction.c);
        jsonGenerator.a("feedback_type", jsonFeedbackAction.a);
        jsonGenerator.a("prompt", jsonFeedbackAction.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
