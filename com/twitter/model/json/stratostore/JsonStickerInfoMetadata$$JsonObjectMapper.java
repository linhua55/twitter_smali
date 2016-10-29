package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.media.stickers.JsonStickerInfo;
import com.twitter.model.json.media.stickers.JsonStickerInfo$$JsonObjectMapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonStickerInfoMetadata$$JsonObjectMapper extends JsonMapper<JsonStickerInfoMetadata> {
    public JsonStickerInfoMetadata parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStickerInfoMetadata _parse(JsonParser jsonParser) throws IOException {
        JsonStickerInfoMetadata jsonStickerInfoMetadata = new JsonStickerInfoMetadata();
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
            parseField(jsonStickerInfoMetadata, e, jsonParser);
            jsonParser.c();
        }
        return jsonStickerInfoMetadata;
    }

    public static void parseField(JsonStickerInfoMetadata jsonStickerInfoMetadata, String str, JsonParser jsonParser) throws IOException {
        if (!"stickers".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonStickerInfo _parse = JsonStickerInfo$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonStickerInfoMetadata.a = (JsonStickerInfo[]) arrayList.toArray(new JsonStickerInfo[arrayList.size()]);
            return;
        }
        jsonStickerInfoMetadata.a = null;
    }

    public void serialize(JsonStickerInfoMetadata jsonStickerInfoMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStickerInfoMetadata, jsonGenerator, z);
    }

    public static void _serialize(JsonStickerInfoMetadata jsonStickerInfoMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        JsonStickerInfo[] jsonStickerInfoArr = jsonStickerInfoMetadata.a;
        if (jsonStickerInfoArr != null) {
            jsonGenerator.a("stickers");
            jsonGenerator.a();
            for (JsonStickerInfo jsonStickerInfo : jsonStickerInfoArr) {
                if (jsonStickerInfo != null) {
                    JsonStickerInfo$$JsonObjectMapper._serialize(jsonStickerInfo, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
