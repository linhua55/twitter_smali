package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.timeline.aj;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineMessage$$JsonObjectMapper extends JsonMapper<JsonTimelineMessage> {
    public JsonTimelineMessage parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineMessage _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineMessage jsonTimelineMessage = new JsonTimelineMessage();
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
            parseField(jsonTimelineMessage, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineMessage;
    }

    public static void parseField(JsonTimelineMessage jsonTimelineMessage, String str, JsonParser jsonParser) throws IOException {
        if ("dismissible".equals(str)) {
            jsonTimelineMessage.b = jsonParser.r();
        } else if ("inline_prompt".equals(str)) {
            jsonTimelineMessage.d = JsonInlinePrompt$$JsonObjectMapper._parse(jsonParser);
        } else if ("inline_prompt_two_actions".equals(str)) {
            jsonTimelineMessage.c = JsonInlinePromptTwoActions$$JsonObjectMapper._parse(jsonParser);
        } else if ("suggests_info".equals(str)) {
            jsonTimelineMessage.a = (aj) LoganSquare.typeConverterFor(aj.class).parse(jsonParser);
        }
    }

    public void serialize(JsonTimelineMessage jsonTimelineMessage, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineMessage, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineMessage jsonTimelineMessage, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("dismissible", jsonTimelineMessage.b);
        if (jsonTimelineMessage.d != null) {
            jsonGenerator.a("inline_prompt");
            JsonInlinePrompt$$JsonObjectMapper._serialize(jsonTimelineMessage.d, jsonGenerator, true);
        }
        if (jsonTimelineMessage.c != null) {
            jsonGenerator.a("inline_prompt_two_actions");
            JsonInlinePromptTwoActions$$JsonObjectMapper._serialize(jsonTimelineMessage.c, jsonGenerator, true);
        }
        if (jsonTimelineMessage.a != null) {
            LoganSquare.typeConverterFor(aj.class).serialize(jsonTimelineMessage.a, "suggests_info", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
