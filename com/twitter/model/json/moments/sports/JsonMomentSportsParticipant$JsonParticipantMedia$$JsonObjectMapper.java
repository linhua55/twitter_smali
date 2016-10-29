package com.twitter.model.json.moments.sports;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.moments.sports.JsonMomentSportsParticipant.JsonParticipantMedia;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMomentSportsParticipant$JsonParticipantMedia$$JsonObjectMapper extends JsonMapper<JsonParticipantMedia> {
    public JsonParticipantMedia parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonParticipantMedia _parse(JsonParser jsonParser) throws IOException {
        JsonParticipantMedia jsonParticipantMedia = new JsonParticipantMedia();
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
            parseField(jsonParticipantMedia, e, jsonParser);
            jsonParser.c();
        }
        return jsonParticipantMedia;
    }

    public static void parseField(JsonParticipantMedia jsonParticipantMedia, String str, JsonParser jsonParser) throws IOException {
        if ("url".equals(str)) {
            jsonParticipantMedia.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonParticipantMedia jsonParticipantMedia, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonParticipantMedia, jsonGenerator, z);
    }

    public static void _serialize(JsonParticipantMedia jsonParticipantMedia, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("url", jsonParticipantMedia.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
