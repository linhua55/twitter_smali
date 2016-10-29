package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.timeline.NotificationType;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineNotification$$JsonObjectMapper extends JsonMapper<JsonTimelineNotification> {
    public JsonTimelineNotification parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineNotification _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineNotification jsonTimelineNotification = new JsonTimelineNotification();
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
            parseField(jsonTimelineNotification, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineNotification;
    }

    public static void parseField(JsonTimelineNotification jsonTimelineNotification, String str, JsonParser jsonParser) throws IOException {
        if ("display_duration".equals(str)) {
            jsonTimelineNotification.d = jsonParser.p();
        } else if ("notification_type".equals(str)) {
            jsonTimelineNotification.a = (NotificationType) LoganSquare.typeConverterFor(NotificationType.class).parse(jsonParser);
        } else if ("text".equals(str)) {
            jsonTimelineNotification.b = jsonParser.a(null);
        } else if ("trigger_delay".equals(str)) {
            jsonTimelineNotification.c = jsonParser.p();
        }
    }

    public void serialize(JsonTimelineNotification jsonTimelineNotification, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineNotification, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineNotification jsonTimelineNotification, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("display_duration", jsonTimelineNotification.d);
        if (jsonTimelineNotification.a != null) {
            LoganSquare.typeConverterFor(NotificationType.class).serialize(jsonTimelineNotification.a, "notification_type", true, jsonGenerator);
        }
        jsonGenerator.a("text", jsonTimelineNotification.b);
        jsonGenerator.a("trigger_delay", jsonTimelineNotification.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
