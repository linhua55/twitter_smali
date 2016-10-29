package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.media.foundmedia.c;
import com.twitter.model.media.foundmedia.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonFoundMediaData$$JsonObjectMapper extends JsonMapper<JsonFoundMediaData> {
    public JsonFoundMediaData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFoundMediaData _parse(JsonParser jsonParser) throws IOException {
        JsonFoundMediaData jsonFoundMediaData = new JsonFoundMediaData();
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
            parseField(jsonFoundMediaData, e, jsonParser);
            jsonParser.c();
        }
        return jsonFoundMediaData;
    }

    public static void parseField(JsonFoundMediaData jsonFoundMediaData, String str, JsonParser jsonParser) throws IOException {
        List arrayList;
        if ("groups".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    c cVar = (c) LoganSquare.typeConverterFor(c.class).parse(jsonParser);
                    if (cVar != null) {
                        arrayList.add(cVar);
                    }
                }
                jsonFoundMediaData.a = arrayList;
                return;
            }
            jsonFoundMediaData.a = null;
        } else if (!"items".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    f fVar = (f) LoganSquare.typeConverterFor(f.class).parse(jsonParser);
                    if (fVar != null) {
                        arrayList.add(fVar);
                    }
                }
                jsonFoundMediaData.b = arrayList;
                return;
            }
            jsonFoundMediaData.b = null;
        }
    }

    public void serialize(JsonFoundMediaData jsonFoundMediaData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFoundMediaData, jsonGenerator, z);
    }

    public static void _serialize(JsonFoundMediaData jsonFoundMediaData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<c> list = jsonFoundMediaData.a;
        if (list != null) {
            jsonGenerator.a("groups");
            jsonGenerator.a();
            for (c cVar : list) {
                if (cVar != null) {
                    LoganSquare.typeConverterFor(c.class).serialize(cVar, "lslocalgroupsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        List<f> list2 = jsonFoundMediaData.b;
        if (list2 != null) {
            jsonGenerator.a("items");
            jsonGenerator.a();
            for (f fVar : list2) {
                if (fVar != null) {
                    LoganSquare.typeConverterFor(f.class).serialize(fVar, "lslocalitemsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
