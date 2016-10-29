package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.geo.VendorInfo.YelpInfo;
import com.twitter.model.geo.q;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonVendorInfo$$JsonObjectMapper extends JsonMapper<JsonVendorInfo> {
    public JsonVendorInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonVendorInfo _parse(JsonParser jsonParser) throws IOException {
        JsonVendorInfo jsonVendorInfo = new JsonVendorInfo();
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
            parseField(jsonVendorInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonVendorInfo;
    }

    public static void parseField(JsonVendorInfo jsonVendorInfo, String str, JsonParser jsonParser) throws IOException {
        if ("foursquare".equals(str)) {
            jsonVendorInfo.b = (q) LoganSquare.typeConverterFor(q.class).parse(jsonParser);
        } else if ("yelp".equals(str)) {
            jsonVendorInfo.a = (YelpInfo) LoganSquare.typeConverterFor(YelpInfo.class).parse(jsonParser);
        }
    }

    public void serialize(JsonVendorInfo jsonVendorInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonVendorInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonVendorInfo jsonVendorInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonVendorInfo.b != null) {
            LoganSquare.typeConverterFor(q.class).serialize(jsonVendorInfo.b, "foursquare", true, jsonGenerator);
        }
        if (jsonVendorInfo.a != null) {
            LoganSquare.typeConverterFor(YelpInfo.class).serialize(jsonVendorInfo.a, "yelp", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
