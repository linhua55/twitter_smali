package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.geo.JsonVendorInfo.JsonFourSquareInfo;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonVendorInfo$JsonFourSquareInfo$$JsonObjectMapper extends JsonMapper<JsonFourSquareInfo> {
    public JsonFourSquareInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFourSquareInfo _parse(JsonParser jsonParser) throws IOException {
        JsonFourSquareInfo jsonFourSquareInfo = new JsonFourSquareInfo();
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
            parseField(jsonFourSquareInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonFourSquareInfo;
    }

    public static void parseField(JsonFourSquareInfo jsonFourSquareInfo, String str, JsonParser jsonParser) throws IOException {
        if ("venue_id".equals(str)) {
            jsonFourSquareInfo.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonFourSquareInfo jsonFourSquareInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFourSquareInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonFourSquareInfo jsonFourSquareInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("venue_id", jsonFourSquareInfo.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
