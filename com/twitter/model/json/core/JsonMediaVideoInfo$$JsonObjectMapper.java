package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.am;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMediaVideoInfo$$JsonObjectMapper extends JsonMapper<JsonMediaVideoInfo> {
    public JsonMediaVideoInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaVideoInfo _parse(JsonParser jsonParser) throws IOException {
        JsonMediaVideoInfo jsonMediaVideoInfo = new JsonMediaVideoInfo();
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
            parseField(jsonMediaVideoInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaVideoInfo;
    }

    public static void parseField(JsonMediaVideoInfo jsonMediaVideoInfo, String str, JsonParser jsonParser) throws IOException {
        if ("aspect_ratio".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List<Integer> arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    arrayList.add(Integer.valueOf(jsonParser.o()));
                }
                int[] iArr = new int[arrayList.size()];
                int i = 0;
                for (Integer intValue : arrayList) {
                    int i2 = i + 1;
                    iArr[i] = intValue.intValue();
                    i = i2;
                }
                jsonMediaVideoInfo.a = iArr;
                return;
            }
            jsonMediaVideoInfo.a = null;
        } else if ("duration_millis".equals(str)) {
            jsonMediaVideoInfo.b = (float) jsonParser.q();
        } else if (!"variants".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList2 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    am amVar = (am) LoganSquare.typeConverterFor(am.class).parse(jsonParser);
                    if (amVar != null) {
                        arrayList2.add(amVar);
                    }
                }
                jsonMediaVideoInfo.c = arrayList2;
                return;
            }
            jsonMediaVideoInfo.c = null;
        }
    }

    public void serialize(JsonMediaVideoInfo jsonMediaVideoInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaVideoInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaVideoInfo jsonMediaVideoInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        int[] iArr = jsonMediaVideoInfo.a;
        if (iArr != null) {
            jsonGenerator.a("aspect_ratio");
            jsonGenerator.a();
            for (int b : iArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("duration_millis", jsonMediaVideoInfo.b);
        List<am> list = jsonMediaVideoInfo.c;
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
