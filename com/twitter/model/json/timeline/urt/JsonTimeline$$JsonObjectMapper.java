package com.twitter.model.json.timeline.urt;

import coa;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTimeline$$JsonObjectMapper extends JsonMapper<JsonTimeline> {
    public JsonTimeline parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimeline _parse(JsonParser jsonParser) throws IOException {
        JsonTimeline jsonTimeline = new JsonTimeline();
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
            parseField(jsonTimeline, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimeline;
    }

    public static void parseField(JsonTimeline jsonTimeline, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonTimeline.a = jsonParser.a(null);
        } else if (!"instructions".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    coa coa = (coa) LoganSquare.typeConverterFor(coa.class).parse(jsonParser);
                    if (coa != null) {
                        arrayList.add(coa);
                    }
                }
                jsonTimeline.b = arrayList;
                return;
            }
            jsonTimeline.b = null;
        }
    }

    public void serialize(JsonTimeline jsonTimeline, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimeline, jsonGenerator, z);
    }

    public static void _serialize(JsonTimeline jsonTimeline, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonTimeline.a);
        List<coa> list = jsonTimeline.b;
        if (list != null) {
            jsonGenerator.a("instructions");
            jsonGenerator.a();
            for (coa coa : list) {
                if (coa != null) {
                    LoganSquare.typeConverterFor(coa.class).serialize(coa, "lslocalinstructionsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
