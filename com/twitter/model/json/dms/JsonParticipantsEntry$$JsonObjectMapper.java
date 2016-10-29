package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.dms.Participant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonParticipantsEntry$$JsonObjectMapper extends JsonMapper<JsonParticipantsEntry> {
    public JsonParticipantsEntry parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonParticipantsEntry _parse(JsonParser jsonParser) throws IOException {
        JsonParticipantsEntry jsonParticipantsEntry = new JsonParticipantsEntry();
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
            parseField(jsonParticipantsEntry, e, jsonParser);
            jsonParser.c();
        }
        return jsonParticipantsEntry;
    }

    public static void parseField(JsonParticipantsEntry jsonParticipantsEntry, String str, JsonParser jsonParser) throws IOException {
        if (!"participants".equals(str)) {
            JsonConversationEvent$$JsonObjectMapper.parseField(jsonParticipantsEntry, str, jsonParser);
        } else if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                Participant participant = (Participant) LoganSquare.typeConverterFor(Participant.class).parse(jsonParser);
                if (participant != null) {
                    arrayList.add(participant);
                }
            }
            jsonParticipantsEntry.a = arrayList;
        } else {
            jsonParticipantsEntry.a = null;
        }
    }

    public void serialize(JsonParticipantsEntry jsonParticipantsEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonParticipantsEntry, jsonGenerator, z);
    }

    public static void _serialize(JsonParticipantsEntry jsonParticipantsEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<Participant> list = jsonParticipantsEntry.a;
        if (list != null) {
            jsonGenerator.a("participants");
            jsonGenerator.a();
            for (Participant participant : list) {
                if (participant != null) {
                    LoganSquare.typeConverterFor(Participant.class).serialize(participant, "lslocalparticipantsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        JsonConversationEvent$$JsonObjectMapper._serialize(jsonParticipantsEntry, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
