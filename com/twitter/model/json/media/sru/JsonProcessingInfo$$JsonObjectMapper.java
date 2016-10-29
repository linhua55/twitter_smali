package com.twitter.model.json.media.sru;

import cjo;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonProcessingInfo$$JsonObjectMapper extends JsonMapper<JsonProcessingInfo> {
    protected static final a SRU_STATE_CONVERTER;

    static {
        SRU_STATE_CONVERTER = new a();
    }

    public JsonProcessingInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonProcessingInfo _parse(JsonParser jsonParser) throws IOException {
        JsonProcessingInfo jsonProcessingInfo = new JsonProcessingInfo();
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
            parseField(jsonProcessingInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonProcessingInfo;
    }

    public static void parseField(JsonProcessingInfo jsonProcessingInfo, String str, JsonParser jsonParser) throws IOException {
        if ("check_after_secs".equals(str)) {
            jsonProcessingInfo.b = jsonParser.o();
        } else if ("error".equals(str)) {
            jsonProcessingInfo.c = (cjo) LoganSquare.typeConverterFor(cjo.class).parse(jsonParser);
        } else if ("state".equals(str)) {
            jsonProcessingInfo.a = ((Integer) SRU_STATE_CONVERTER.parse(jsonParser)).intValue();
        }
    }

    public void serialize(JsonProcessingInfo jsonProcessingInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonProcessingInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonProcessingInfo jsonProcessingInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("check_after_secs", jsonProcessingInfo.b);
        if (jsonProcessingInfo.c != null) {
            LoganSquare.typeConverterFor(cjo.class).serialize(jsonProcessingInfo.c, "error", true, jsonGenerator);
        }
        SRU_STATE_CONVERTER.serialize(Integer.valueOf(jsonProcessingInfo.a), "state", true, jsonGenerator);
        if (z) {
            jsonGenerator.d();
        }
    }
}
