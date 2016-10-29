package com.twitter.model.json.moments.maker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonMediaSize$$JsonObjectMapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMediaData$$JsonObjectMapper extends JsonMapper<JsonMediaData> {
    public JsonMediaData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaData _parse(JsonParser jsonParser) throws IOException {
        JsonMediaData jsonMediaData = new JsonMediaData();
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
            parseField(jsonMediaData, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaData;
    }

    public static void parseField(JsonMediaData jsonMediaData, String str, JsonParser jsonParser) throws IOException {
        if ("crops".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    JsonMakerCropData _parse = JsonMakerCropData$$JsonObjectMapper._parse(jsonParser);
                    if (_parse != null) {
                        arrayList.add(_parse);
                    }
                }
                jsonMediaData.c = arrayList;
                return;
            }
            jsonMediaData.c = null;
        } else if ("media_id".equals(str)) {
            jsonMediaData.a = jsonParser.p();
        } else if ("no_crop".equals(str)) {
            jsonMediaData.d = jsonParser.r();
        } else if ("size".equals(str)) {
            jsonMediaData.b = JsonMediaSize$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonMediaData jsonMediaData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaData, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaData jsonMediaData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonMakerCropData> list = jsonMediaData.c;
        if (list != null) {
            jsonGenerator.a("crops");
            jsonGenerator.a();
            for (JsonMakerCropData jsonMakerCropData : list) {
                if (jsonMakerCropData != null) {
                    JsonMakerCropData$$JsonObjectMapper._serialize(jsonMakerCropData, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("media_id", jsonMediaData.a);
        jsonGenerator.a("no_crop", jsonMediaData.d);
        if (jsonMediaData.b != null) {
            jsonGenerator.a("size");
            JsonMediaSize$$JsonObjectMapper._serialize(jsonMediaData.b, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
