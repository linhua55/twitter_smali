package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.geo.d;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonAddress$$JsonObjectMapper extends JsonMapper<JsonAddress> {
    public JsonAddress parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAddress _parse(JsonParser jsonParser) throws IOException {
        JsonAddress jsonAddress = new JsonAddress();
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
            parseField(jsonAddress, e, jsonParser);
            jsonParser.c();
        }
        return jsonAddress;
    }

    public static void parseField(JsonAddress jsonAddress, String str, JsonParser jsonParser) throws IOException {
        if ("address_line_1".equals(str)) {
            jsonAddress.a = jsonParser.a(null);
        } else if ("address_line_2".equals(str)) {
            jsonAddress.b = jsonParser.a(null);
        } else if ("city".equals(str)) {
            jsonAddress.d = jsonParser.a(null);
        } else if ("country_code".equals(str)) {
            jsonAddress.g = jsonParser.a(null);
        } else if ("geo_coordinates".equals(str)) {
            jsonAddress.h = (d) LoganSquare.typeConverterFor(d.class).parse(jsonParser);
        } else if ("postal_code".equals(str)) {
            jsonAddress.f = jsonParser.a(null);
        } else if ("region".equals(str)) {
            jsonAddress.e = jsonParser.a(null);
        } else if ("sublocality".equals(str)) {
            jsonAddress.c = jsonParser.a(null);
        }
    }

    public void serialize(JsonAddress jsonAddress, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAddress, jsonGenerator, z);
    }

    public static void _serialize(JsonAddress jsonAddress, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("address_line_1", jsonAddress.a);
        jsonGenerator.a("address_line_2", jsonAddress.b);
        jsonGenerator.a("city", jsonAddress.d);
        jsonGenerator.a("country_code", jsonAddress.g);
        if (jsonAddress.h != null) {
            LoganSquare.typeConverterFor(d.class).serialize(jsonAddress.h, "geo_coordinates", true, jsonGenerator);
        }
        jsonGenerator.a("postal_code", jsonAddress.f);
        jsonGenerator.a("region", jsonAddress.e);
        jsonGenerator.a("sublocality", jsonAddress.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
