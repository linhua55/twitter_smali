package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonModuleLayoutContent$$JsonObjectMapper extends JsonMapper<JsonModuleLayoutContent> {
    public JsonModuleLayoutContent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonModuleLayoutContent _parse(JsonParser jsonParser) throws IOException {
        JsonModuleLayoutContent jsonModuleLayoutContent = new JsonModuleLayoutContent();
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
            parseField(jsonModuleLayoutContent, e, jsonParser);
            jsonParser.c();
        }
        return jsonModuleLayoutContent;
    }

    public static void parseField(JsonModuleLayoutContent jsonModuleLayoutContent, String str, JsonParser jsonParser) throws IOException {
        if (!"pages".equals(str)) {
            JsonModulePage$$JsonObjectMapper.parseField(jsonModuleLayoutContent, str, jsonParser);
        } else if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonModulePage _parse = JsonModulePage$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonModuleLayoutContent.a = arrayList;
        } else {
            jsonModuleLayoutContent.a = null;
        }
    }

    public void serialize(JsonModuleLayoutContent jsonModuleLayoutContent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonModuleLayoutContent, jsonGenerator, z);
    }

    public static void _serialize(JsonModuleLayoutContent jsonModuleLayoutContent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonModulePage> list = jsonModuleLayoutContent.a;
        if (list != null) {
            jsonGenerator.a("pages");
            jsonGenerator.a();
            for (JsonModulePage jsonModulePage : list) {
                if (jsonModulePage != null) {
                    JsonModulePage$$JsonObjectMapper._serialize(jsonModulePage, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        JsonModulePage$$JsonObjectMapper._serialize(jsonModuleLayoutContent, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
