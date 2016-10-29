package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonInterestSelections$$JsonObjectMapper extends JsonMapper<JsonInterestSelections> {
    public JsonInterestSelections parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonInterestSelections _parse(JsonParser jsonParser) throws IOException {
        JsonInterestSelections jsonInterestSelections = new JsonInterestSelections();
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
            parseField(jsonInterestSelections, e, jsonParser);
            jsonParser.c();
        }
        return jsonInterestSelections;
    }

    public static void parseField(JsonInterestSelections jsonInterestSelections, String str, JsonParser jsonParser) throws IOException {
        if (!"interestSelections".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonInterestSelections$JsonInterestSelection _parse = JsonInterestSelections$JsonInterestSelection$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonInterestSelections.a = arrayList;
            return;
        }
        jsonInterestSelections.a = null;
    }

    public void serialize(JsonInterestSelections jsonInterestSelections, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonInterestSelections, jsonGenerator, z);
    }

    public static void _serialize(JsonInterestSelections jsonInterestSelections, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonInterestSelections$JsonInterestSelection> list = jsonInterestSelections.a;
        if (list != null) {
            jsonGenerator.a("interestSelections");
            jsonGenerator.a();
            for (JsonInterestSelections$JsonInterestSelection jsonInterestSelections$JsonInterestSelection : list) {
                if (jsonInterestSelections$JsonInterestSelection != null) {
                    JsonInterestSelections$JsonInterestSelection$$JsonObjectMapper._serialize(jsonInterestSelections$JsonInterestSelection, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
