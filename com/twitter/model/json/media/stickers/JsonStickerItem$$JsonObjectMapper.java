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
public final class JsonStickerItem$$JsonObjectMapper extends JsonMapper<JsonStickerItem> {
    public JsonStickerItem parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStickerItem _parse(JsonParser jsonParser) throws IOException {
        JsonStickerItem jsonStickerItem = new JsonStickerItem();
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
            parseField(jsonStickerItem, e, jsonParser);
            jsonParser.c();
        }
        return jsonStickerItem;
    }

    public static void parseField(JsonStickerItem jsonStickerItem, String str, JsonParser jsonParser) throws IOException {
        if ("sticker".equals(str)) {
            jsonStickerItem.a = (cjw) LoganSquare.typeConverterFor(cjw.class).parse(jsonParser);
        } else if (!"variant_stickers".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cjw cjw = (cjw) LoganSquare.typeConverterFor(cjw.class).parse(jsonParser);
                    if (cjw != null) {
                        arrayList.add(cjw);
                    }
                }
                jsonStickerItem.b = arrayList;
                return;
            }
            jsonStickerItem.b = null;
        }
    }

    public void serialize(JsonStickerItem jsonStickerItem, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStickerItem, jsonGenerator, z);
    }

    public static void _serialize(JsonStickerItem jsonStickerItem, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonStickerItem.a != null) {
            LoganSquare.typeConverterFor(cjw.class).serialize(jsonStickerItem.a, "sticker", true, jsonGenerator);
        }
        List<cjw> list = jsonStickerItem.b;
        if (list != null) {
            jsonGenerator.a("variant_stickers");
            jsonGenerator.a();
            for (cjw cjw : list) {
                if (cjw != null) {
                    LoganSquare.typeConverterFor(cjw.class).serialize(cjw, "lslocalvariant_stickersElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
