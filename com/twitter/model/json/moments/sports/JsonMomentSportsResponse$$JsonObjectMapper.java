package com.twitter.model.json.moments.sports;

import cll;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMomentSportsResponse$$JsonObjectMapper extends JsonMapper<JsonMomentSportsResponse> {
    public JsonMomentSportsResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMomentSportsResponse _parse(JsonParser jsonParser) throws IOException {
        JsonMomentSportsResponse jsonMomentSportsResponse = new JsonMomentSportsResponse();
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
            parseField(jsonMomentSportsResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonMomentSportsResponse;
    }

    public static void parseField(JsonMomentSportsResponse jsonMomentSportsResponse, String str, JsonParser jsonParser) throws IOException {
        if (!"event_updates".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                cll cll = (cll) LoganSquare.typeConverterFor(cll.class).parse(jsonParser);
                if (cll != null) {
                    arrayList.add(cll);
                }
            }
            jsonMomentSportsResponse.a = arrayList;
            return;
        }
        jsonMomentSportsResponse.a = null;
    }

    public void serialize(JsonMomentSportsResponse jsonMomentSportsResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMomentSportsResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonMomentSportsResponse jsonMomentSportsResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cll> list = jsonMomentSportsResponse.a;
        if (list != null) {
            jsonGenerator.a("event_updates");
            jsonGenerator.a();
            for (cll cll : list) {
                if (cll != null) {
                    LoganSquare.typeConverterFor(cll.class).serialize(cll, "lslocalevent_updatesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
