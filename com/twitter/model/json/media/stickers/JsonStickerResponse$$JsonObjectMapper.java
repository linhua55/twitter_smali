package com.twitter.model.json.media.stickers;

import cjw;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonStickerResponse$$JsonObjectMapper extends JsonMapper<JsonStickerResponse> {
    public JsonStickerResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStickerResponse _parse(JsonParser jsonParser) throws IOException {
        JsonStickerResponse jsonStickerResponse = new JsonStickerResponse();
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
            parseField(jsonStickerResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonStickerResponse;
    }

    public static void parseField(JsonStickerResponse jsonStickerResponse, String str, JsonParser jsonParser) throws IOException {
        if (!"stickers".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                cjw cjw = (cjw) LoganSquare.typeConverterFor(cjw.class).parse(jsonParser);
                if (cjw != null) {
                    arrayList.add(cjw);
                }
            }
            jsonStickerResponse.a = arrayList;
            return;
        }
        jsonStickerResponse.a = null;
    }

    public void serialize(JsonStickerResponse jsonStickerResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStickerResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonStickerResponse jsonStickerResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cjw> list = jsonStickerResponse.a;
        if (list != null) {
            jsonGenerator.a("stickers");
            jsonGenerator.a();
            for (cjw cjw : list) {
                if (cjw != null) {
                    LoganSquare.typeConverterFor(cjw.class).serialize(cjw, "lslocalstickersElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
