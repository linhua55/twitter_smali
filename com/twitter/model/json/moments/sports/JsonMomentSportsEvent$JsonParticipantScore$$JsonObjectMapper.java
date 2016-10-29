package com.twitter.model.json.moments.sports;

import clr;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.moments.sports.JsonMomentSportsEvent.JsonParticipantScore;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMomentSportsEvent$JsonParticipantScore$$JsonObjectMapper extends JsonMapper<JsonParticipantScore> {
    public JsonParticipantScore parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonParticipantScore _parse(JsonParser jsonParser) throws IOException {
        JsonParticipantScore jsonParticipantScore = new JsonParticipantScore();
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
            parseField(jsonParticipantScore, e, jsonParser);
            jsonParser.c();
        }
        return jsonParticipantScore;
    }

    public static void parseField(JsonParticipantScore jsonParticipantScore, String str, JsonParser jsonParser) throws IOException {
        if ("participant".equals(str)) {
            jsonParticipantScore.a = (clr) LoganSquare.typeConverterFor(clr.class).parse(jsonParser);
        } else if ("score".equals(str)) {
            jsonParticipantScore.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonParticipantScore jsonParticipantScore, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonParticipantScore, jsonGenerator, z);
    }

    public static void _serialize(JsonParticipantScore jsonParticipantScore, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonParticipantScore.a != null) {
            LoganSquare.typeConverterFor(clr.class).serialize(jsonParticipantScore.a, "participant", true, jsonGenerator);
        }
        jsonGenerator.a("score", jsonParticipantScore.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
