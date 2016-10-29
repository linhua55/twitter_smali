package com.twitter.model.json.media.stickers;

import ckb;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonStickerVariants$$JsonObjectMapper extends JsonMapper<JsonStickerVariants> {
    public JsonStickerVariants parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStickerVariants _parse(JsonParser jsonParser) throws IOException {
        JsonStickerVariants jsonStickerVariants = new JsonStickerVariants();
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
            parseField(jsonStickerVariants, e, jsonParser);
            jsonParser.c();
        }
        return jsonStickerVariants;
    }

    public static void parseField(JsonStickerVariants jsonStickerVariants, String str, JsonParser jsonParser) throws IOException {
        if ("aspect_ratio".equals(str)) {
            jsonStickerVariants.f = (float) jsonParser.q();
        } else if ("raw".equals(str)) {
            jsonStickerVariants.a = (ckb) LoganSquare.typeConverterFor(ckb.class).parse(jsonParser);
        } else if ("size_1x".equals(str)) {
            jsonStickerVariants.b = (ckb) LoganSquare.typeConverterFor(ckb.class).parse(jsonParser);
        } else if ("size_2x".equals(str)) {
            jsonStickerVariants.c = (ckb) LoganSquare.typeConverterFor(ckb.class).parse(jsonParser);
        } else if ("size_3x".equals(str)) {
            jsonStickerVariants.d = (ckb) LoganSquare.typeConverterFor(ckb.class).parse(jsonParser);
        } else if ("size_4x".equals(str)) {
            jsonStickerVariants.e = (ckb) LoganSquare.typeConverterFor(ckb.class).parse(jsonParser);
        }
    }

    public void serialize(JsonStickerVariants jsonStickerVariants, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStickerVariants, jsonGenerator, z);
    }

    public static void _serialize(JsonStickerVariants jsonStickerVariants, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("aspect_ratio", jsonStickerVariants.f);
        if (jsonStickerVariants.a != null) {
            LoganSquare.typeConverterFor(ckb.class).serialize(jsonStickerVariants.a, "raw", true, jsonGenerator);
        }
        if (jsonStickerVariants.b != null) {
            LoganSquare.typeConverterFor(ckb.class).serialize(jsonStickerVariants.b, "size_1x", true, jsonGenerator);
        }
        if (jsonStickerVariants.c != null) {
            LoganSquare.typeConverterFor(ckb.class).serialize(jsonStickerVariants.c, "size_2x", true, jsonGenerator);
        }
        if (jsonStickerVariants.d != null) {
            LoganSquare.typeConverterFor(ckb.class).serialize(jsonStickerVariants.d, "size_3x", true, jsonGenerator);
        }
        if (jsonStickerVariants.e != null) {
            LoganSquare.typeConverterFor(ckb.class).serialize(jsonStickerVariants.e, "size_4x", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
