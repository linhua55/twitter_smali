package com.twitter.model.json.media.stickers;

import ckb;
import ckr;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonStickerCategory$$JsonObjectMapper extends JsonMapper<JsonStickerCategory> {
    public JsonStickerCategory parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStickerCategory _parse(JsonParser jsonParser) throws IOException {
        JsonStickerCategory jsonStickerCategory = new JsonStickerCategory();
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
            parseField(jsonStickerCategory, e, jsonParser);
            jsonParser.c();
        }
        return jsonStickerCategory;
    }

    public static void parseField(JsonStickerCategory jsonStickerCategory, String str, JsonParser jsonParser) throws IOException {
        if ("annotation_id".equals(str)) {
            jsonStickerCategory.a = jsonParser.p();
        } else if ("display_name".equals(str)) {
            jsonStickerCategory.b = jsonParser.a(null);
        } else if ("icon_image".equals(str)) {
            jsonStickerCategory.c = (ckb) LoganSquare.typeConverterFor(ckb.class).parse(jsonParser);
        } else if ("id".equals(str)) {
            jsonStickerCategory.d = jsonParser.p();
        } else if ("items".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    ckr ckr = (ckr) LoganSquare.typeConverterFor(ckr.class).parse(jsonParser);
                    if (ckr != null) {
                        arrayList.add(ckr);
                    }
                }
                jsonStickerCategory.e = arrayList;
                return;
            }
            jsonStickerCategory.e = null;
        } else if ("type".equals(str)) {
            jsonStickerCategory.f = jsonParser.a(null);
        }
    }

    public void serialize(JsonStickerCategory jsonStickerCategory, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStickerCategory, jsonGenerator, z);
    }

    public static void _serialize(JsonStickerCategory jsonStickerCategory, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("annotation_id", jsonStickerCategory.a);
        jsonGenerator.a("display_name", jsonStickerCategory.b);
        if (jsonStickerCategory.c != null) {
            LoganSquare.typeConverterFor(ckb.class).serialize(jsonStickerCategory.c, "icon_image", true, jsonGenerator);
        }
        jsonGenerator.a("id", jsonStickerCategory.d);
        List<ckr> list = jsonStickerCategory.e;
        if (list != null) {
            jsonGenerator.a("items");
            jsonGenerator.a();
            for (ckr ckr : list) {
                if (ckr != null) {
                    LoganSquare.typeConverterFor(ckr.class).serialize(ckr, "lslocalitemsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("type", jsonStickerCategory.f);
        if (z) {
            jsonGenerator.d();
        }
    }
}
