package com.twitter.model.json.media.stickers;

import ckp;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonStickerCatalogResponse$$JsonObjectMapper extends JsonMapper<JsonStickerCatalogResponse> {
    public JsonStickerCatalogResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStickerCatalogResponse _parse(JsonParser jsonParser) throws IOException {
        JsonStickerCatalogResponse jsonStickerCatalogResponse = new JsonStickerCatalogResponse();
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
            parseField(jsonStickerCatalogResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonStickerCatalogResponse;
    }

    public static void parseField(JsonStickerCatalogResponse jsonStickerCatalogResponse, String str, JsonParser jsonParser) throws IOException {
        List arrayList;
        ckp ckp;
        if ("categories".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    ckp = (ckp) LoganSquare.typeConverterFor(ckp.class).parse(jsonParser);
                    if (ckp != null) {
                        arrayList.add(ckp);
                    }
                }
                jsonStickerCatalogResponse.a = arrayList;
                return;
            }
            jsonStickerCatalogResponse.a = null;
        } else if (!"featured_sections".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    ckp = (ckp) LoganSquare.typeConverterFor(ckp.class).parse(jsonParser);
                    if (ckp != null) {
                        arrayList.add(ckp);
                    }
                }
                jsonStickerCatalogResponse.b = arrayList;
                return;
            }
            jsonStickerCatalogResponse.b = null;
        }
    }

    public void serialize(JsonStickerCatalogResponse jsonStickerCatalogResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStickerCatalogResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonStickerCatalogResponse jsonStickerCatalogResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<ckp> list = jsonStickerCatalogResponse.a;
        if (list != null) {
            jsonGenerator.a("categories");
            jsonGenerator.a();
            for (ckp ckp : list) {
                if (ckp != null) {
                    LoganSquare.typeConverterFor(ckp.class).serialize(ckp, "lslocalcategoriesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        list = jsonStickerCatalogResponse.b;
        if (list != null) {
            jsonGenerator.a("featured_sections");
            jsonGenerator.a();
            for (ckp ckp2 : list) {
                if (ckp2 != null) {
                    LoganSquare.typeConverterFor(ckp.class).serialize(ckp2, "lslocalfeatured_sectionsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
