package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.people.ModuleTitle;
import com.twitter.model.people.aj;
import com.twitter.model.people.h;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonModuleHeader$$JsonObjectMapper extends JsonMapper<JsonModuleHeader> {
    public JsonModuleHeader parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonModuleHeader _parse(JsonParser jsonParser) throws IOException {
        JsonModuleHeader jsonModuleHeader = new JsonModuleHeader();
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
            parseField(jsonModuleHeader, e, jsonParser);
            jsonParser.c();
        }
        return jsonModuleHeader;
    }

    public static void parseField(JsonModuleHeader jsonModuleHeader, String str, JsonParser jsonParser) throws IOException {
        if ("action".equals(str)) {
            jsonModuleHeader.c = (aj) LoganSquare.typeConverterFor(aj.class).parse(jsonParser);
        } else if ("avatars".equals(str)) {
            jsonModuleHeader.d = (h) LoganSquare.typeConverterFor(h.class).parse(jsonParser);
        } else if ("subtitle".equals(str)) {
            jsonModuleHeader.b = (ModuleTitle) LoganSquare.typeConverterFor(ModuleTitle.class).parse(jsonParser);
        } else if ("title".equals(str)) {
            jsonModuleHeader.a = (ModuleTitle) LoganSquare.typeConverterFor(ModuleTitle.class).parse(jsonParser);
        }
    }

    public void serialize(JsonModuleHeader jsonModuleHeader, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonModuleHeader, jsonGenerator, z);
    }

    public static void _serialize(JsonModuleHeader jsonModuleHeader, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonModuleHeader.c != null) {
            LoganSquare.typeConverterFor(aj.class).serialize(jsonModuleHeader.c, "action", true, jsonGenerator);
        }
        if (jsonModuleHeader.d != null) {
            LoganSquare.typeConverterFor(h.class).serialize(jsonModuleHeader.d, "avatars", true, jsonGenerator);
        }
        if (jsonModuleHeader.b != null) {
            LoganSquare.typeConverterFor(ModuleTitle.class).serialize(jsonModuleHeader.b, "subtitle", true, jsonGenerator);
        }
        if (jsonModuleHeader.a != null) {
            LoganSquare.typeConverterFor(ModuleTitle.class).serialize(jsonModuleHeader.a, "title", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
