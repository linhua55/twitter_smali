package com.twitter.model.json.av;

import cni;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.av.DynamicAdMediaInfo;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonVideoAd$$JsonObjectMapper extends JsonMapper<JsonVideoAd> {
    public JsonVideoAd parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonVideoAd _parse(JsonParser jsonParser) throws IOException {
        JsonVideoAd jsonVideoAd = new JsonVideoAd();
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
            parseField(jsonVideoAd, e, jsonParser);
            jsonParser.c();
        }
        return jsonVideoAd;
    }

    public static void parseField(JsonVideoAd jsonVideoAd, String str, JsonParser jsonParser) throws IOException {
        if ("dynamic_preroll_type".equals(str)) {
            jsonVideoAd.d = jsonParser.o();
        } else if ("media_info".equals(str)) {
            jsonVideoAd.e = (DynamicAdMediaInfo) LoganSquare.typeConverterFor(DynamicAdMediaInfo.class).parse(jsonParser);
        } else if ("preroll_id".equals(str)) {
            jsonVideoAd.c = jsonParser.a(null);
        } else if ("promoted_content".equals(str)) {
            jsonVideoAd.b = (cni) LoganSquare.typeConverterFor(cni.class).parse(jsonParser);
        } else if ("tweet_id".equals(str)) {
            jsonVideoAd.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonVideoAd jsonVideoAd, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonVideoAd, jsonGenerator, z);
    }

    public static void _serialize(JsonVideoAd jsonVideoAd, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("dynamic_preroll_type", jsonVideoAd.d);
        if (jsonVideoAd.e != null) {
            LoganSquare.typeConverterFor(DynamicAdMediaInfo.class).serialize(jsonVideoAd.e, "media_info", true, jsonGenerator);
        }
        jsonGenerator.a("preroll_id", jsonVideoAd.c);
        if (jsonVideoAd.b != null) {
            LoganSquare.typeConverterFor(cni.class).serialize(jsonVideoAd.b, "promoted_content", true, jsonGenerator);
        }
        jsonGenerator.a("tweet_id", jsonVideoAd.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
