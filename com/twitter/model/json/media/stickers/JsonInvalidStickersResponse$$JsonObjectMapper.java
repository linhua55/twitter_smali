package com.twitter.model.json.media.stickers;

import cjq;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonInvalidStickersResponse$$JsonObjectMapper extends JsonMapper<JsonInvalidStickersResponse> {
    public JsonInvalidStickersResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonInvalidStickersResponse _parse(JsonParser jsonParser) throws IOException {
        JsonInvalidStickersResponse jsonInvalidStickersResponse = new JsonInvalidStickersResponse();
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
            parseField(jsonInvalidStickersResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonInvalidStickersResponse;
    }

    public static void parseField(JsonInvalidStickersResponse jsonInvalidStickersResponse, String str, JsonParser jsonParser) throws IOException {
        if (!"invalid_stickers".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                cjq cjq = (cjq) LoganSquare.typeConverterFor(cjq.class).parse(jsonParser);
                if (cjq != null) {
                    arrayList.add(cjq);
                }
            }
            jsonInvalidStickersResponse.a = arrayList;
            return;
        }
        jsonInvalidStickersResponse.a = null;
    }

    public void serialize(JsonInvalidStickersResponse jsonInvalidStickersResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonInvalidStickersResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonInvalidStickersResponse jsonInvalidStickersResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cjq> list = jsonInvalidStickersResponse.a;
        if (list != null) {
            jsonGenerator.a("invalid_stickers");
            jsonGenerator.a();
            for (cjq cjq : list) {
                if (cjq != null) {
                    LoganSquare.typeConverterFor(cjq.class).serialize(cjq, "lslocalinvalid_stickersElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
