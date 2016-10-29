package com.twitter.model.json.activity;

import cfu;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonDisplayText$$JsonObjectMapper extends JsonMapper<JsonDisplayText> {
    public JsonDisplayText parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonDisplayText _parse(JsonParser jsonParser) throws IOException {
        JsonDisplayText jsonDisplayText = new JsonDisplayText();
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
            parseField(jsonDisplayText, e, jsonParser);
            jsonParser.c();
        }
        return jsonDisplayText;
    }

    public static void parseField(JsonDisplayText jsonDisplayText, String str, JsonParser jsonParser) throws IOException {
        if ("bold_indexes".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cfu cfu = (cfu) LoganSquare.typeConverterFor(cfu.class).parse(jsonParser);
                    if (cfu != null) {
                        arrayList.add(cfu);
                    }
                }
                jsonDisplayText.b = arrayList;
                return;
            }
            jsonDisplayText.b = null;
        } else if ("text".equals(str)) {
            jsonDisplayText.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonDisplayText jsonDisplayText, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonDisplayText, jsonGenerator, z);
    }

    public static void _serialize(JsonDisplayText jsonDisplayText, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cfu> list = jsonDisplayText.b;
        if (list != null) {
            jsonGenerator.a("bold_indexes");
            jsonGenerator.a();
            for (cfu cfu : list) {
                if (cfu != null) {
                    LoganSquare.typeConverterFor(cfu.class).serialize(cfu, "lslocalbold_indexesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("text", jsonDisplayText.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
