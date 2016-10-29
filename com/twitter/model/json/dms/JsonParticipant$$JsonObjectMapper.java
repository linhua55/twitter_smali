package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonParticipant$$JsonObjectMapper extends JsonMapper<JsonParticipant> {
    public JsonParticipant parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonParticipant _parse(JsonParser jsonParser) throws IOException {
        JsonParticipant jsonParticipant = new JsonParticipant();
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
            parseField(jsonParticipant, e, jsonParser);
            jsonParser.c();
        }
        return jsonParticipant;
    }

    public static void parseField(JsonParticipant jsonParticipant, String str, JsonParser jsonParser) throws IOException {
        if ("join_time".equals(str)) {
            jsonParticipant.b = jsonParser.p();
        } else if ("last_read_event_id".equals(str)) {
            jsonParticipant.c = jsonParser.p();
        } else if ("user_id".equals(str)) {
            jsonParticipant.a = jsonParser.p();
        }
    }

    public void serialize(JsonParticipant jsonParticipant, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonParticipant, jsonGenerator, z);
    }

    public static void _serialize(JsonParticipant jsonParticipant, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("join_time", jsonParticipant.b);
        jsonGenerator.a("last_read_event_id", jsonParticipant.c);
        jsonGenerator.a("user_id", jsonParticipant.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
