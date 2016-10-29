package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.cm;
import com.twitter.model.json.geo.JsonPlacePageResponse.JsonPlacePageTimeline;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonPlacePageResponse$JsonPlacePageTimeline$$JsonObjectMapper extends JsonMapper<JsonPlacePageTimeline> {
    public JsonPlacePageTimeline parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPlacePageTimeline _parse(JsonParser jsonParser) throws IOException {
        JsonPlacePageTimeline jsonPlacePageTimeline = new JsonPlacePageTimeline();
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
            parseField(jsonPlacePageTimeline, e, jsonParser);
            jsonParser.c();
        }
        return jsonPlacePageTimeline;
    }

    public static void parseField(JsonPlacePageTimeline jsonPlacePageTimeline, String str, JsonParser jsonParser) throws IOException {
        if ("cursor".equals(str)) {
            jsonPlacePageTimeline.a = jsonParser.a(null);
        } else if (!"tweets".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cm cmVar = (cm) LoganSquare.typeConverterFor(cm.class).parse(jsonParser);
                    if (cmVar != null) {
                        arrayList.add(cmVar);
                    }
                }
                jsonPlacePageTimeline.b = arrayList;
                return;
            }
            jsonPlacePageTimeline.b = null;
        }
    }

    public void serialize(JsonPlacePageTimeline jsonPlacePageTimeline, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPlacePageTimeline, jsonGenerator, z);
    }

    public static void _serialize(JsonPlacePageTimeline jsonPlacePageTimeline, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("cursor", jsonPlacePageTimeline.a);
        List<cm> list = jsonPlacePageTimeline.b;
        if (list != null) {
            jsonGenerator.a("tweets");
            jsonGenerator.a();
            for (cm cmVar : list) {
                if (cmVar != null) {
                    LoganSquare.typeConverterFor(cm.class).serialize(cmVar, "lslocaltweetsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
