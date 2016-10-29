package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.stratostore.SourceLocation;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonInterestSelections$JsonInterestSelection$$JsonObjectMapper extends JsonMapper<JsonInterestSelections$JsonInterestSelection> {
    public JsonInterestSelections$JsonInterestSelection parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonInterestSelections$JsonInterestSelection _parse(JsonParser jsonParser) throws IOException {
        JsonInterestSelections$JsonInterestSelection jsonInterestSelections$JsonInterestSelection = new JsonInterestSelections$JsonInterestSelection();
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
            parseField(jsonInterestSelections$JsonInterestSelection, e, jsonParser);
            jsonParser.c();
        }
        return jsonInterestSelections$JsonInterestSelection;
    }

    public static void parseField(JsonInterestSelections$JsonInterestSelection jsonInterestSelections$JsonInterestSelection, String str, JsonParser jsonParser) throws IOException {
        if ("country".equals(str)) {
            jsonInterestSelections$JsonInterestSelection.c = jsonParser.a(null);
        } else if ("interest".equals(str)) {
            jsonInterestSelections$JsonInterestSelection.a = JsonInterestSelections$JsonInterest$$JsonObjectMapper._parse(jsonParser);
        } else if ("interestContextToken".equals(str)) {
            jsonInterestSelections$JsonInterestSelection.e = jsonParser.a(null);
        } else if ("language".equals(str)) {
            jsonInterestSelections$JsonInterestSelection.d = jsonParser.a(null);
        } else if ("sourceLocation".equals(str)) {
            jsonInterestSelections$JsonInterestSelection.b = (SourceLocation) LoganSquare.typeConverterFor(SourceLocation.class).parse(jsonParser);
        } else if ("timestampMs".equals(str)) {
            jsonInterestSelections$JsonInterestSelection.f = jsonParser.a(null);
        }
    }

    public void serialize(JsonInterestSelections$JsonInterestSelection jsonInterestSelections$JsonInterestSelection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonInterestSelections$JsonInterestSelection, jsonGenerator, z);
    }

    public static void _serialize(JsonInterestSelections$JsonInterestSelection jsonInterestSelections$JsonInterestSelection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("country", jsonInterestSelections$JsonInterestSelection.c);
        if (jsonInterestSelections$JsonInterestSelection.a != null) {
            jsonGenerator.a("interest");
            JsonInterestSelections$JsonInterest$$JsonObjectMapper._serialize(jsonInterestSelections$JsonInterestSelection.a, jsonGenerator, true);
        }
        jsonGenerator.a("interestContextToken", jsonInterestSelections$JsonInterestSelection.e);
        jsonGenerator.a("language", jsonInterestSelections$JsonInterestSelection.d);
        if (jsonInterestSelections$JsonInterestSelection.b != null) {
            LoganSquare.typeConverterFor(SourceLocation.class).serialize(jsonInterestSelections$JsonInterestSelection.b, "sourceLocation", true, jsonGenerator);
        }
        jsonGenerator.a("timestampMs", jsonInterestSelections$JsonInterestSelection.f);
        if (z) {
            jsonGenerator.d();
        }
    }
}
