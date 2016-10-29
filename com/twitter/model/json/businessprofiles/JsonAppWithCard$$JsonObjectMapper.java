package com.twitter.model.json.businessprofiles;

import cgl;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonAppWithCard$$JsonObjectMapper extends JsonMapper<JsonAppWithCard> {
    public JsonAppWithCard parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAppWithCard _parse(JsonParser jsonParser) throws IOException {
        JsonAppWithCard jsonAppWithCard = new JsonAppWithCard();
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
            parseField(jsonAppWithCard, e, jsonParser);
            jsonParser.c();
        }
        return jsonAppWithCard;
    }

    public static void parseField(JsonAppWithCard jsonAppWithCard, String str, JsonParser jsonParser) throws IOException {
        if ("app_id".equals(str)) {
            jsonAppWithCard.a = jsonParser.a(null);
        } else if ("card".equals(str)) {
            jsonAppWithCard.d = (cgl) LoganSquare.typeConverterFor(cgl.class).parse(jsonParser);
        } else if ("country".equals(str)) {
            jsonAppWithCard.b = jsonParser.a(null);
        } else if ("deep_link".equals(str)) {
            jsonAppWithCard.c = jsonParser.a(null);
        }
    }

    public void serialize(JsonAppWithCard jsonAppWithCard, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAppWithCard, jsonGenerator, z);
    }

    public static void _serialize(JsonAppWithCard jsonAppWithCard, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("app_id", jsonAppWithCard.a);
        if (jsonAppWithCard.d != null) {
            LoganSquare.typeConverterFor(cgl.class).serialize(jsonAppWithCard.d, "card", true, jsonGenerator);
        }
        jsonGenerator.a("country", jsonAppWithCard.b);
        jsonGenerator.a("deep_link", jsonAppWithCard.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
