package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.geo.JsonVendorInfo.JsonYelpInfo;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonVendorInfo$JsonYelpInfo$$JsonObjectMapper extends JsonMapper<JsonYelpInfo> {
    public JsonYelpInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonYelpInfo _parse(JsonParser jsonParser) throws IOException {
        JsonYelpInfo jsonYelpInfo = new JsonYelpInfo();
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
            parseField(jsonYelpInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonYelpInfo;
    }

    public static void parseField(JsonYelpInfo jsonYelpInfo, String str, JsonParser jsonParser) throws IOException {
        if ("business_id".equals(str)) {
            jsonYelpInfo.a = jsonParser.a(null);
        } else if ("mobile_url".equals(str)) {
            jsonYelpInfo.c = jsonParser.a(null);
        } else if ("rating".equals(str)) {
            jsonYelpInfo.e = jsonParser.q();
        } else if ("review_count".equals(str)) {
            jsonYelpInfo.d = jsonParser.o();
        } else if ("url".equals(str)) {
            jsonYelpInfo.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonYelpInfo jsonYelpInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonYelpInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonYelpInfo jsonYelpInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("business_id", jsonYelpInfo.a);
        jsonGenerator.a("mobile_url", jsonYelpInfo.c);
        jsonGenerator.a("rating", jsonYelpInfo.e);
        jsonGenerator.a("review_count", jsonYelpInfo.d);
        jsonGenerator.a("url", jsonYelpInfo.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
