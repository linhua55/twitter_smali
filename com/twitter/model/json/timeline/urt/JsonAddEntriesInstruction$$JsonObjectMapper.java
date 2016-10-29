package com.twitter.model.json.timeline.urt;

import cnz;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonAddEntriesInstruction$$JsonObjectMapper extends JsonMapper<JsonAddEntriesInstruction> {
    public JsonAddEntriesInstruction parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAddEntriesInstruction _parse(JsonParser jsonParser) throws IOException {
        JsonAddEntriesInstruction jsonAddEntriesInstruction = new JsonAddEntriesInstruction();
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
            parseField(jsonAddEntriesInstruction, e, jsonParser);
            jsonParser.c();
        }
        return jsonAddEntriesInstruction;
    }

    public static void parseField(JsonAddEntriesInstruction jsonAddEntriesInstruction, String str, JsonParser jsonParser) throws IOException {
        if (!"entries".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                cnz cnz = (cnz) LoganSquare.typeConverterFor(cnz.class).parse(jsonParser);
                if (cnz != null) {
                    arrayList.add(cnz);
                }
            }
            jsonAddEntriesInstruction.a = arrayList;
            return;
        }
        jsonAddEntriesInstruction.a = null;
    }

    public void serialize(JsonAddEntriesInstruction jsonAddEntriesInstruction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAddEntriesInstruction, jsonGenerator, z);
    }

    public static void _serialize(JsonAddEntriesInstruction jsonAddEntriesInstruction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cnz> list = jsonAddEntriesInstruction.a;
        if (list != null) {
            jsonGenerator.a("entries");
            jsonGenerator.a();
            for (cnz cnz : list) {
                if (cnz != null) {
                    LoganSquare.typeConverterFor(cnz.class).serialize(cnz, "lslocalentriesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
