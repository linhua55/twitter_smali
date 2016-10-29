package com.twitter.model.json.moments.sports;

import clp;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMomentSportsEvent$$JsonObjectMapper extends JsonMapper<JsonMomentSportsEvent> {
    public JsonMomentSportsEvent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMomentSportsEvent _parse(JsonParser jsonParser) throws IOException {
        JsonMomentSportsEvent jsonMomentSportsEvent = new JsonMomentSportsEvent();
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
            parseField(jsonMomentSportsEvent, e, jsonParser);
            jsonParser.c();
        }
        return jsonMomentSportsEvent;
    }

    public static void parseField(JsonMomentSportsEvent jsonMomentSportsEvent, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonMomentSportsEvent.a = jsonParser.a(null);
        } else if ("participant_scores".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    clp clp = (clp) LoganSquare.typeConverterFor(clp.class).parse(jsonParser);
                    if (clp != null) {
                        arrayList.add(clp);
                    }
                }
                jsonMomentSportsEvent.e = arrayList;
                return;
            }
            jsonMomentSportsEvent.e = null;
        } else if ("progress_strings".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList2 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        arrayList2.add(a);
                    }
                }
                jsonMomentSportsEvent.c = arrayList2;
                return;
            }
            jsonMomentSportsEvent.c = null;
        } else if ("status".equals(str)) {
            jsonMomentSportsEvent.b = jsonParser.a(null);
        } else if ("winner_id".equals(str)) {
            jsonMomentSportsEvent.d = jsonParser.p();
        }
    }

    public void serialize(JsonMomentSportsEvent jsonMomentSportsEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMomentSportsEvent, jsonGenerator, z);
    }

    public static void _serialize(JsonMomentSportsEvent jsonMomentSportsEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonMomentSportsEvent.a);
        List<clp> list = jsonMomentSportsEvent.e;
        if (list != null) {
            jsonGenerator.a("participant_scores");
            jsonGenerator.a();
            for (clp clp : list) {
                if (clp != null) {
                    LoganSquare.typeConverterFor(clp.class).serialize(clp, "lslocalparticipant_scoresElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        List<String> list2 = jsonMomentSportsEvent.c;
        if (list2 != null) {
            jsonGenerator.a("progress_strings");
            jsonGenerator.a();
            for (String b : list2) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("status", jsonMomentSportsEvent.b);
        jsonGenerator.a("winner_id", jsonMomentSportsEvent.d);
        if (z) {
            jsonGenerator.d();
        }
    }
}
