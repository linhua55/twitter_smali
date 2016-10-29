package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCSFeedbackDismissedEntry$$JsonObjectMapper extends JsonMapper<JsonCSFeedbackDismissedEntry> {
    public JsonCSFeedbackDismissedEntry parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCSFeedbackDismissedEntry _parse(JsonParser jsonParser) throws IOException {
        JsonCSFeedbackDismissedEntry jsonCSFeedbackDismissedEntry = new JsonCSFeedbackDismissedEntry();
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
            parseField(jsonCSFeedbackDismissedEntry, e, jsonParser);
            jsonParser.c();
        }
        return jsonCSFeedbackDismissedEntry;
    }

    public static void parseField(JsonCSFeedbackDismissedEntry jsonCSFeedbackDismissedEntry, String str, JsonParser jsonParser) throws IOException {
        if ("survey_from_user_id".equals(str)) {
            jsonCSFeedbackDismissedEntry.a = jsonParser.a(null);
        } else {
            JsonConversationEntry$$JsonObjectMapper.parseField(jsonCSFeedbackDismissedEntry, str, jsonParser);
        }
    }

    public void serialize(JsonCSFeedbackDismissedEntry jsonCSFeedbackDismissedEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCSFeedbackDismissedEntry, jsonGenerator, z);
    }

    public static void _serialize(JsonCSFeedbackDismissedEntry jsonCSFeedbackDismissedEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("survey_from_user_id", jsonCSFeedbackDismissedEntry.a);
        JsonConversationEntry$$JsonObjectMapper._serialize(jsonCSFeedbackDismissedEntry, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
