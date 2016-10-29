package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.av.VideoCta;
import com.twitter.model.core.am;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMediaInfo$$JsonObjectMapper extends JsonMapper<JsonMediaInfo> {
    public JsonMediaInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaInfo _parse(JsonParser jsonParser) throws IOException {
        JsonMediaInfo jsonMediaInfo = new JsonMediaInfo();
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
            parseField(jsonMediaInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaInfo;
    }

    public static void parseField(JsonMediaInfo jsonMediaInfo, String str, JsonParser jsonParser) throws IOException {
        if ("call_to_action".equals(str)) {
            jsonMediaInfo.c = (VideoCta) LoganSquare.typeConverterFor(VideoCta.class).parse(jsonParser);
        } else if ("duration_millis".equals(str)) {
            jsonMediaInfo.d = jsonParser.p();
        } else if ("publisher_id".equals(str)) {
            jsonMediaInfo.b = jsonParser.p();
        } else if ("uuid".equals(str)) {
            jsonMediaInfo.a = jsonParser.a(null);
        } else if (!"variants".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    am amVar = (am) LoganSquare.typeConverterFor(am.class).parse(jsonParser);
                    if (amVar != null) {
                        arrayList.add(amVar);
                    }
                }
                jsonMediaInfo.e = arrayList;
                return;
            }
            jsonMediaInfo.e = null;
        }
    }

    public void serialize(JsonMediaInfo jsonMediaInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaInfo jsonMediaInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonMediaInfo.c != null) {
            LoganSquare.typeConverterFor(VideoCta.class).serialize(jsonMediaInfo.c, "call_to_action", true, jsonGenerator);
        }
        jsonGenerator.a("duration_millis", jsonMediaInfo.d);
        jsonGenerator.a("publisher_id", jsonMediaInfo.b);
        jsonGenerator.a("uuid", jsonMediaInfo.a);
        List<am> list = jsonMediaInfo.e;
        if (list != null) {
            jsonGenerator.a("variants");
            jsonGenerator.a();
            for (am amVar : list) {
                if (amVar != null) {
                    LoganSquare.typeConverterFor(am.class).serialize(amVar, "lslocalvariantsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
