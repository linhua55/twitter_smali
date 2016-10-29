package com.twitter.model.json.media.stickers;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonStickerInfo$$JsonObjectMapper extends JsonMapper<JsonStickerInfo> {
    public JsonStickerInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStickerInfo _parse(JsonParser jsonParser) throws IOException {
        JsonStickerInfo jsonStickerInfo = new JsonStickerInfo();
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
            parseField(jsonStickerInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonStickerInfo;
    }

    public static void parseField(JsonStickerInfo jsonStickerInfo, String str, JsonParser jsonParser) throws IOException {
        if ("annotationId".equals(str)) {
            jsonStickerInfo.c = jsonParser.p();
        } else if ("aspectRatio".equals(str)) {
            jsonStickerInfo.f = jsonParser.q();
        } else if ("categoryId".equals(str)) {
            jsonStickerInfo.b = jsonParser.p();
        } else if ("groupAnnotationId".equals(str)) {
            jsonStickerInfo.d = jsonParser.p();
        } else if ("id".equals(str)) {
            jsonStickerInfo.a = jsonParser.p();
        } else if ("stickerSetAnnotationId".equals(str)) {
            jsonStickerInfo.e = jsonParser.p();
        } else if ("transformA".equals(str)) {
            jsonStickerInfo.g = jsonParser.q();
        } else if ("transformB".equals(str)) {
            jsonStickerInfo.h = jsonParser.q();
        } else if ("transformC".equals(str)) {
            jsonStickerInfo.i = jsonParser.q();
        } else if ("transformD".equals(str)) {
            jsonStickerInfo.j = jsonParser.q();
        } else if ("transformTx".equals(str)) {
            jsonStickerInfo.k = jsonParser.q();
        } else if ("transformTy".equals(str)) {
            jsonStickerInfo.l = jsonParser.q();
        }
    }

    public void serialize(JsonStickerInfo jsonStickerInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStickerInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonStickerInfo jsonStickerInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("annotationId", jsonStickerInfo.c);
        jsonGenerator.a("aspectRatio", jsonStickerInfo.f);
        jsonGenerator.a("categoryId", jsonStickerInfo.b);
        jsonGenerator.a("groupAnnotationId", jsonStickerInfo.d);
        jsonGenerator.a("id", jsonStickerInfo.a);
        jsonGenerator.a("stickerSetAnnotationId", jsonStickerInfo.e);
        jsonGenerator.a("transformA", jsonStickerInfo.g);
        jsonGenerator.a("transformB", jsonStickerInfo.h);
        jsonGenerator.a("transformC", jsonStickerInfo.i);
        jsonGenerator.a("transformD", jsonStickerInfo.j);
        jsonGenerator.a("transformTx", jsonStickerInfo.k);
        jsonGenerator.a("transformTy", jsonStickerInfo.l);
        if (z) {
            jsonGenerator.d();
        }
    }
}
