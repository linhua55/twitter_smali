package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCSFeedbackSubmittedEntry$$JsonObjectMapper extends JsonMapper<JsonCSFeedbackSubmittedEntry> {
    public JsonCSFeedbackSubmittedEntry parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCSFeedbackSubmittedEntry _parse(JsonParser jsonParser) throws IOException {
        JsonCSFeedbackSubmittedEntry jsonCSFeedbackSubmittedEntry = new JsonCSFeedbackSubmittedEntry();
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
            parseField(jsonCSFeedbackSubmittedEntry, e, jsonParser);
            jsonParser.c();
        }
        return jsonCSFeedbackSubmittedEntry;
    }

    public static void parseField(JsonCSFeedbackSubmittedEntry jsonCSFeedbackSubmittedEntry, String str, JsonParser jsonParser) throws IOException {
        Integer num = null;
        if ("feedback_type".equals(str)) {
            jsonCSFeedbackSubmittedEntry.a = jsonParser.a(null);
        } else if ("score".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                num = Integer.valueOf(jsonParser.o());
            }
            jsonCSFeedbackSubmittedEntry.b = num;
        } else if ("survey_from_user_id".equals(str)) {
            jsonCSFeedbackSubmittedEntry.c = jsonParser.a(null);
        } else {
            JsonConversationEntry$$JsonObjectMapper.parseField(jsonCSFeedbackSubmittedEntry, str, jsonParser);
        }
    }

    public void serialize(JsonCSFeedbackSubmittedEntry jsonCSFeedbackSubmittedEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCSFeedbackSubmittedEntry, jsonGenerator, z);
    }

    public static void _serialize(JsonCSFeedbackSubmittedEntry jsonCSFeedbackSubmittedEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("feedback_type", jsonCSFeedbackSubmittedEntry.a);
        jsonGenerator.a("score", jsonCSFeedbackSubmittedEntry.b.intValue());
        jsonGenerator.a("survey_from_user_id", jsonCSFeedbackSubmittedEntry.c);
        JsonConversationEntry$$JsonObjectMapper._serialize(jsonCSFeedbackSubmittedEntry, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
