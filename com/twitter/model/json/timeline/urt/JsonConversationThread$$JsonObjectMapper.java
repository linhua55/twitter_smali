package com.twitter.model.json.timeline.urt;

import cns;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonConversationThread$$JsonObjectMapper extends JsonMapper<JsonConversationThread> {
    public JsonConversationThread parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonConversationThread _parse(JsonParser jsonParser) throws IOException {
        JsonConversationThread jsonConversationThread = new JsonConversationThread();
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
            parseField(jsonConversationThread, e, jsonParser);
            jsonParser.c();
        }
        return jsonConversationThread;
    }

    public static void parseField(JsonConversationThread jsonConversationThread, String str, JsonParser jsonParser) throws IOException {
        if ("conversationComponents".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cns cns = (cns) LoganSquare.typeConverterFor(cns.class).parse(jsonParser);
                    if (cns != null) {
                        arrayList.add(cns);
                    }
                }
                jsonConversationThread.a = arrayList;
                return;
            }
            jsonConversationThread.a = null;
        } else if ("showMoreCursor".equals(str)) {
            jsonConversationThread.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonConversationThread jsonConversationThread, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonConversationThread, jsonGenerator, z);
    }

    public static void _serialize(JsonConversationThread jsonConversationThread, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cns> list = jsonConversationThread.a;
        if (list != null) {
            jsonGenerator.a("conversationComponents");
            jsonGenerator.a();
            for (cns cns : list) {
                if (cns != null) {
                    LoganSquare.typeConverterFor(cns.class).serialize(cns, "lslocalconversationComponentsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("showMoreCursor", jsonConversationThread.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
