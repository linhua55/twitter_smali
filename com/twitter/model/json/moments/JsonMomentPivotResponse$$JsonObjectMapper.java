package com.twitter.model.json.moments;

import clc;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMomentPivotResponse$$JsonObjectMapper extends JsonMapper<JsonMomentPivotResponse> {
    public JsonMomentPivotResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMomentPivotResponse _parse(JsonParser jsonParser) throws IOException {
        JsonMomentPivotResponse jsonMomentPivotResponse = new JsonMomentPivotResponse();
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
            parseField(jsonMomentPivotResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonMomentPivotResponse;
    }

    public static void parseField(JsonMomentPivotResponse jsonMomentPivotResponse, String str, JsonParser jsonParser) throws IOException {
        if ("capsules".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    clc clc = (clc) LoganSquare.typeConverterFor(clc.class).parse(jsonParser);
                    if (clc != null) {
                        arrayList.add(clc);
                    }
                }
                jsonMomentPivotResponse.a = arrayList;
                return;
            }
            jsonMomentPivotResponse.a = null;
        } else if ("impression_id".equals(str)) {
            jsonMomentPivotResponse.b = jsonParser.p();
        }
    }

    public void serialize(JsonMomentPivotResponse jsonMomentPivotResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMomentPivotResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonMomentPivotResponse jsonMomentPivotResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<clc> list = jsonMomentPivotResponse.a;
        if (list != null) {
            jsonGenerator.a("capsules");
            jsonGenerator.a();
            for (clc clc : list) {
                if (clc != null) {
                    LoganSquare.typeConverterFor(clc.class).serialize(clc, "lslocalcapsulesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("impression_id", jsonMomentPivotResponse.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
