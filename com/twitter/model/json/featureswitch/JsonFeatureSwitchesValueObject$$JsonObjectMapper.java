package com.twitter.model.json.featureswitch;

import ciu;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonFeatureSwitchesValueObject$$JsonObjectMapper extends JsonMapper<JsonFeatureSwitchesValueObject> {
    public JsonFeatureSwitchesValueObject parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFeatureSwitchesValueObject _parse(JsonParser jsonParser) throws IOException {
        JsonFeatureSwitchesValueObject jsonFeatureSwitchesValueObject = new JsonFeatureSwitchesValueObject();
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
            parseField(jsonFeatureSwitchesValueObject, e, jsonParser);
            jsonParser.c();
        }
        return jsonFeatureSwitchesValueObject;
    }

    public static void parseField(JsonFeatureSwitchesValueObject jsonFeatureSwitchesValueObject, String str, JsonParser jsonParser) throws IOException {
        if ("value".equals(str)) {
            jsonFeatureSwitchesValueObject.a = (ciu) LoganSquare.typeConverterFor(ciu.class).parse(jsonParser);
        }
    }

    public void serialize(JsonFeatureSwitchesValueObject jsonFeatureSwitchesValueObject, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFeatureSwitchesValueObject, jsonGenerator, z);
    }

    public static void _serialize(JsonFeatureSwitchesValueObject jsonFeatureSwitchesValueObject, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonFeatureSwitchesValueObject.a != null) {
            LoganSquare.typeConverterFor(ciu.class).serialize(jsonFeatureSwitchesValueObject.a, "value", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
