package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.cm;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterCollection$$JsonObjectMapper extends JsonMapper<JsonTwitterCollection> {
    public JsonTwitterCollection parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterCollection _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterCollection jsonTwitterCollection = new JsonTwitterCollection();
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
            parseField(jsonTwitterCollection, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterCollection;
    }

    public static void parseField(JsonTwitterCollection jsonTwitterCollection, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonTwitterCollection.a = jsonParser.p();
        } else if ("items".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cm cmVar = (cm) LoganSquare.typeConverterFor(cm.class).parse(jsonParser);
                    if (cmVar != null) {
                        arrayList.add(cmVar);
                    }
                }
                jsonTwitterCollection.c = arrayList;
                return;
            }
            jsonTwitterCollection.c = null;
        } else if ("url".equals(str)) {
            jsonTwitterCollection.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonTwitterCollection jsonTwitterCollection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterCollection, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterCollection jsonTwitterCollection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonTwitterCollection.a);
        List<cm> list = jsonTwitterCollection.c;
        if (list != null) {
            jsonGenerator.a("items");
            jsonGenerator.a();
            for (cm cmVar : list) {
                if (cmVar != null) {
                    LoganSquare.typeConverterFor(cm.class).serialize(cmVar, "lslocalitemsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("url", jsonTwitterCollection.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
