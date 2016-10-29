package com.twitter.model.json.revenue;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonAdMetadata$$JsonObjectMapper extends JsonMapper<JsonAdMetadata> {
    public JsonAdMetadata parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAdMetadata _parse(JsonParser jsonParser) throws IOException {
        JsonAdMetadata jsonAdMetadata = new JsonAdMetadata();
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
            parseField(jsonAdMetadata, e, jsonParser);
            jsonParser.c();
        }
        return jsonAdMetadata;
    }

    public static void parseField(JsonAdMetadata jsonAdMetadata, String str, JsonParser jsonParser) throws IOException {
        if ("expiration_interval_secs".equals(str)) {
            jsonAdMetadata.f = jsonParser.p();
        } else if ("id".equals(str)) {
            jsonAdMetadata.a = jsonParser.p();
        } else if ("slot_id".equals(str)) {
            jsonAdMetadata.d = jsonParser.a(null);
        } else if ("sort_index".equals(str)) {
            jsonAdMetadata.e = jsonParser.p();
        } else if ("tweets".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    Object valueOf = jsonParser.d() == JsonToken.m ? null : Long.valueOf(jsonParser.p());
                    if (valueOf != null) {
                        arrayList.add(valueOf);
                    }
                }
                jsonAdMetadata.c = arrayList;
                return;
            }
            jsonAdMetadata.c = null;
        } else if ("type".equals(str)) {
            jsonAdMetadata.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonAdMetadata jsonAdMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAdMetadata, jsonGenerator, z);
    }

    public static void _serialize(JsonAdMetadata jsonAdMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("expiration_interval_secs", jsonAdMetadata.f);
        jsonGenerator.a("id", jsonAdMetadata.a);
        jsonGenerator.a("slot_id", jsonAdMetadata.d);
        jsonGenerator.a("sort_index", jsonAdMetadata.e);
        List<Long> list = jsonAdMetadata.c;
        if (list != null) {
            jsonGenerator.a("tweets");
            jsonGenerator.a();
            for (Long longValue : list) {
                jsonGenerator.a(longValue.longValue());
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("type", jsonAdMetadata.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
