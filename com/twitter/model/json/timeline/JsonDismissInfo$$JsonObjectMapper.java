package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.timeline.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonDismissInfo$$JsonObjectMapper extends JsonMapper<JsonDismissInfo> {
    public JsonDismissInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonDismissInfo _parse(JsonParser jsonParser) throws IOException {
        JsonDismissInfo jsonDismissInfo = new JsonDismissInfo();
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
            parseField(jsonDismissInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonDismissInfo;
    }

    public static void parseField(JsonDismissInfo jsonDismissInfo, String str, JsonParser jsonParser) throws IOException {
        if ("dismiss".equals(str)) {
            jsonDismissInfo.a = (i) LoganSquare.typeConverterFor(i.class).parse(jsonParser);
        } else if (!"feedback_actions".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    i iVar = (i) LoganSquare.typeConverterFor(i.class).parse(jsonParser);
                    if (iVar != null) {
                        arrayList.add(iVar);
                    }
                }
                jsonDismissInfo.b = arrayList;
                return;
            }
            jsonDismissInfo.b = null;
        }
    }

    public void serialize(JsonDismissInfo jsonDismissInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonDismissInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonDismissInfo jsonDismissInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonDismissInfo.a != null) {
            LoganSquare.typeConverterFor(i.class).serialize(jsonDismissInfo.a, "dismiss", true, jsonGenerator);
        }
        List<i> list = jsonDismissInfo.b;
        if (list != null) {
            jsonGenerator.a("feedback_actions");
            jsonGenerator.a();
            for (i iVar : list) {
                if (iVar != null) {
                    LoganSquare.typeConverterFor(i.class).serialize(iVar, "lslocalfeedback_actionsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
