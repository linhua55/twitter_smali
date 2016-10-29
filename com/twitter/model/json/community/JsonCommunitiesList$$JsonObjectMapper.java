package com.twitter.model.json.community;

import cho;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonCommunitiesList$$JsonObjectMapper extends JsonMapper<JsonCommunitiesList> {
    public JsonCommunitiesList parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCommunitiesList _parse(JsonParser jsonParser) throws IOException {
        JsonCommunitiesList jsonCommunitiesList = new JsonCommunitiesList();
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
            parseField(jsonCommunitiesList, e, jsonParser);
            jsonParser.c();
        }
        return jsonCommunitiesList;
    }

    public static void parseField(JsonCommunitiesList jsonCommunitiesList, String str, JsonParser jsonParser) throws IOException {
        if (!"communities".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                cho cho = (cho) LoganSquare.typeConverterFor(cho.class).parse(jsonParser);
                if (cho != null) {
                    arrayList.add(cho);
                }
            }
            jsonCommunitiesList.a = arrayList;
            return;
        }
        jsonCommunitiesList.a = null;
    }

    public void serialize(JsonCommunitiesList jsonCommunitiesList, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCommunitiesList, jsonGenerator, z);
    }

    public static void _serialize(JsonCommunitiesList jsonCommunitiesList, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cho> list = jsonCommunitiesList.a;
        if (list != null) {
            jsonGenerator.a("communities");
            jsonGenerator.a();
            for (cho cho : list) {
                if (cho != null) {
                    LoganSquare.typeConverterFor(cho.class).serialize(cho, "lslocalcommunitiesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
