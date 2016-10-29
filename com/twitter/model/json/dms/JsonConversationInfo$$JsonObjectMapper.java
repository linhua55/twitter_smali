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
public final class JsonConversationInfo$$JsonObjectMapper extends JsonMapper<JsonConversationInfo> {
    protected static final b JSON_CONVERSATION_TYPE_CONVERTER;

    static {
        JSON_CONVERSATION_TYPE_CONVERTER = new b();
    }

    public JsonConversationInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonConversationInfo _parse(JsonParser jsonParser) throws IOException {
        JsonConversationInfo jsonConversationInfo = new JsonConversationInfo();
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
            parseField(jsonConversationInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonConversationInfo;
    }

    public static void parseField(JsonConversationInfo jsonConversationInfo, String str, JsonParser jsonParser) throws IOException {
        if ("avatar_image_https".equals(str)) {
            jsonConversationInfo.d = jsonParser.a(null);
        } else if ("conversation_id".equals(str)) {
            jsonConversationInfo.a = jsonParser.a(null);
        } else if ("create_time".equals(str)) {
            jsonConversationInfo.h = jsonParser.p();
        } else if ("created_by_user_id".equals(str)) {
            jsonConversationInfo.i = jsonParser.p();
        } else if ("notifications_disabled".equals(str)) {
            jsonConversationInfo.l = jsonParser.r();
        } else if ("last_read_event_id".equals(str)) {
            jsonConversationInfo.e = jsonParser.p();
        } else if ("min_entry_id".equals(str)) {
            jsonConversationInfo.j = jsonParser.p();
        } else if ("participants".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    Participant participant = (Participant) LoganSquare.typeConverterFor(Participant.class).parse(jsonParser);
                    if (participant != null) {
                        arrayList.add(participant);
                    }
                }
                jsonConversationInfo.k = arrayList;
                return;
            }
            jsonConversationInfo.k = null;
        } else if ("read_only".equals(str)) {
            jsonConversationInfo.m = jsonParser.r();
        } else if ("sort_event_id".equals(str)) {
            jsonConversationInfo.f = jsonParser.p();
        } else if ("sort_timestamp".equals(str)) {
            jsonConversationInfo.g = jsonParser.p();
        } else if ("name".equals(str)) {
            jsonConversationInfo.c = jsonParser.a(null);
        } else if ("type".equals(str)) {
            jsonConversationInfo.b = ((Integer) JSON_CONVERSATION_TYPE_CONVERTER.parse(jsonParser)).intValue();
        }
    }

    public void serialize(JsonConversationInfo jsonConversationInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonConversationInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonConversationInfo jsonConversationInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("avatar_image_https", jsonConversationInfo.d);
        jsonGenerator.a("conversation_id", jsonConversationInfo.a);
        jsonGenerator.a("create_time", jsonConversationInfo.h);
        jsonGenerator.a("created_by_user_id", jsonConversationInfo.i);
        jsonGenerator.a("notifications_disabled", jsonConversationInfo.l);
        jsonGenerator.a("last_read_event_id", jsonConversationInfo.e);
        jsonGenerator.a("min_entry_id", jsonConversationInfo.j);
        List<Participant> list = jsonConversationInfo.k;
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
        jsonGenerator.a("read_only", jsonConversationInfo.m);
        jsonGenerator.a("sort_event_id", jsonConversationInfo.f);
        jsonGenerator.a("sort_timestamp", jsonConversationInfo.g);
        jsonGenerator.a("name", jsonConversationInfo.c);
        JSON_CONVERSATION_TYPE_CONVERTER.serialize(Integer.valueOf(jsonConversationInfo.b), "type", true, jsonGenerator);
        if (z) {
            jsonGenerator.d();
        }
    }
}
