package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonDMPermission$$JsonObjectMapper extends JsonMapper<JsonDMPermission> {
    public JsonDMPermission parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonDMPermission _parse(JsonParser jsonParser) throws IOException {
        JsonDMPermission jsonDMPermission = new JsonDMPermission();
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
            parseField(jsonDMPermission, e, jsonParser);
            jsonParser.c();
        }
        return jsonDMPermission;
    }

    public static void parseField(JsonDMPermission jsonDMPermission, String str, JsonParser jsonParser) throws IOException {
        if ("can_dm".equals(str)) {
            jsonDMPermission.a = jsonParser.r();
        } else if ("error_code".equals(str)) {
            jsonDMPermission.c = jsonParser.o();
        } else if ("full_permission".equals(str)) {
            jsonDMPermission.b = jsonParser.r();
        }
    }

    public void serialize(JsonDMPermission jsonDMPermission, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonDMPermission, jsonGenerator, z);
    }

    public static void _serialize(JsonDMPermission jsonDMPermission, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("can_dm", jsonDMPermission.a);
        jsonGenerator.a("error_code", jsonDMPermission.c);
        jsonGenerator.a("full_permission", jsonDMPermission.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
