package com.twitter.model.json.moments.sports;

import clu;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMomentSportsParticipant$$JsonObjectMapper extends JsonMapper<JsonMomentSportsParticipant> {
    public JsonMomentSportsParticipant parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMomentSportsParticipant _parse(JsonParser jsonParser) throws IOException {
        JsonMomentSportsParticipant jsonMomentSportsParticipant = new JsonMomentSportsParticipant();
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
            parseField(jsonMomentSportsParticipant, e, jsonParser);
            jsonParser.c();
        }
        return jsonMomentSportsParticipant;
    }

    public static void parseField(JsonMomentSportsParticipant jsonMomentSportsParticipant, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonMomentSportsParticipant.c = jsonParser.p();
        } else if ("media".equals(str)) {
            jsonMomentSportsParticipant.a = (clu) LoganSquare.typeConverterFor(clu.class).parse(jsonParser);
        } else if ("name".equals(str)) {
            jsonMomentSportsParticipant.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonMomentSportsParticipant jsonMomentSportsParticipant, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMomentSportsParticipant, jsonGenerator, z);
    }

    public static void _serialize(JsonMomentSportsParticipant jsonMomentSportsParticipant, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonMomentSportsParticipant.c);
        if (jsonMomentSportsParticipant.a != null) {
            LoganSquare.typeConverterFor(clu.class).serialize(jsonMomentSportsParticipant.a, "media", true, jsonGenerator);
        }
        jsonGenerator.a("name", jsonMomentSportsParticipant.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
