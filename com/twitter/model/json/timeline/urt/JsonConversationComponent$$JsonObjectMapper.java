package com.twitter.model.json.timeline.urt;

import coi;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.timeline.aa;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonConversationComponent$$JsonObjectMapper extends JsonMapper<JsonConversationComponent> {
    public JsonConversationComponent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonConversationComponent _parse(JsonParser jsonParser) throws IOException {
        JsonConversationComponent jsonConversationComponent = new JsonConversationComponent();
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
            parseField(jsonConversationComponent, e, jsonParser);
            jsonParser.c();
        }
        return jsonConversationComponent;
    }

    public static void parseField(JsonConversationComponent jsonConversationComponent, String str, JsonParser jsonParser) throws IOException {
        if ("cursor".equals(str)) {
            jsonConversationComponent.b = (aa) LoganSquare.typeConverterFor(aa.class).parse(jsonParser);
        } else if ("tweet".equals(str)) {
            jsonConversationComponent.a = (coi) LoganSquare.typeConverterFor(coi.class).parse(jsonParser);
        }
    }

    public void serialize(JsonConversationComponent jsonConversationComponent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonConversationComponent, jsonGenerator, z);
    }

    public static void _serialize(JsonConversationComponent jsonConversationComponent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonConversationComponent.b != null) {
            LoganSquare.typeConverterFor(aa.class).serialize(jsonConversationComponent.b, "cursor", true, jsonGenerator);
        }
        if (jsonConversationComponent.a != null) {
            LoganSquare.typeConverterFor(coi.class).serialize(jsonConversationComponent.a, "tweet", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
