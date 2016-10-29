package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.people.ModuleTitle.Icon;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonModuleTitle$$JsonObjectMapper extends JsonMapper<JsonModuleTitle> {
    public JsonModuleTitle parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonModuleTitle _parse(JsonParser jsonParser) throws IOException {
        JsonModuleTitle jsonModuleTitle = new JsonModuleTitle();
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
            parseField(jsonModuleTitle, e, jsonParser);
            jsonParser.c();
        }
        return jsonModuleTitle;
    }

    public static void parseField(JsonModuleTitle jsonModuleTitle, String str, JsonParser jsonParser) throws IOException {
        if ("icon".equals(str)) {
            jsonModuleTitle.b = (Icon) LoganSquare.typeConverterFor(Icon.class).parse(jsonParser);
        } else if ("text".equals(str)) {
            jsonModuleTitle.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonModuleTitle jsonModuleTitle, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonModuleTitle, jsonGenerator, z);
    }

    public static void _serialize(JsonModuleTitle jsonModuleTitle, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonModuleTitle.b != null) {
            LoganSquare.typeConverterFor(Icon.class).serialize(jsonModuleTitle.b, "icon", true, jsonGenerator);
        }
        jsonGenerator.a("text", jsonModuleTitle.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
