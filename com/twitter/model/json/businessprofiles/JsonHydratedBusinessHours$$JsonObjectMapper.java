package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.businessprofiles.an;
import com.twitter.model.businessprofiles.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonHydratedBusinessHours$$JsonObjectMapper extends JsonMapper<JsonHydratedBusinessHours> {
    public JsonHydratedBusinessHours parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonHydratedBusinessHours _parse(JsonParser jsonParser) throws IOException {
        JsonHydratedBusinessHours jsonHydratedBusinessHours = new JsonHydratedBusinessHours();
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
            parseField(jsonHydratedBusinessHours, e, jsonParser);
            jsonParser.c();
        }
        return jsonHydratedBusinessHours;
    }

    public static void parseField(JsonHydratedBusinessHours jsonHydratedBusinessHours, String str, JsonParser jsonParser) throws IOException {
        if ("hours".equals(str)) {
            jsonHydratedBusinessHours.a = (i) LoganSquare.typeConverterFor(i.class).parse(jsonParser);
        } else if ("time_ranges".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    an anVar = (an) LoganSquare.typeConverterFor(an.class).parse(jsonParser);
                    if (anVar != null) {
                        arrayList.add(anVar);
                    }
                }
                jsonHydratedBusinessHours.b = arrayList;
                return;
            }
            jsonHydratedBusinessHours.b = null;
        } else if ("valid".equals(str)) {
            jsonHydratedBusinessHours.c = jsonParser.r();
        }
    }

    public void serialize(JsonHydratedBusinessHours jsonHydratedBusinessHours, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonHydratedBusinessHours, jsonGenerator, z);
    }

    public static void _serialize(JsonHydratedBusinessHours jsonHydratedBusinessHours, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonHydratedBusinessHours.a != null) {
            LoganSquare.typeConverterFor(i.class).serialize(jsonHydratedBusinessHours.a, "hours", true, jsonGenerator);
        }
        List<an> list = jsonHydratedBusinessHours.b;
        if (list != null) {
            jsonGenerator.a("time_ranges");
            jsonGenerator.a();
            for (an anVar : list) {
                if (anVar != null) {
                    LoganSquare.typeConverterFor(an.class).serialize(anVar, "lslocaltime_rangesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("valid", jsonHydratedBusinessHours.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
