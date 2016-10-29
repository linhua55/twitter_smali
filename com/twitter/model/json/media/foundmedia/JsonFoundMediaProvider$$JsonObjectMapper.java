package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.media.foundmedia.FoundMediaImageVariant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonFoundMediaProvider$$JsonObjectMapper extends JsonMapper<JsonFoundMediaProvider> {
    public JsonFoundMediaProvider parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFoundMediaProvider _parse(JsonParser jsonParser) throws IOException {
        JsonFoundMediaProvider jsonFoundMediaProvider = new JsonFoundMediaProvider();
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
            parseField(jsonFoundMediaProvider, e, jsonParser);
            jsonParser.c();
        }
        return jsonFoundMediaProvider;
    }

    public static void parseField(JsonFoundMediaProvider jsonFoundMediaProvider, String str, JsonParser jsonParser) throws IOException {
        if ("display_name".equals(str)) {
            jsonFoundMediaProvider.a = jsonParser.a(null);
        } else if ("icon_images".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    FoundMediaImageVariant foundMediaImageVariant = (FoundMediaImageVariant) LoganSquare.typeConverterFor(FoundMediaImageVariant.class).parse(jsonParser);
                    if (foundMediaImageVariant != null) {
                        arrayList.add(foundMediaImageVariant);
                    }
                }
                jsonFoundMediaProvider.b = arrayList;
                return;
            }
            jsonFoundMediaProvider.b = null;
        } else if ("name".equals(str)) {
            jsonFoundMediaProvider.c = jsonParser.a(null);
        }
    }

    public void serialize(JsonFoundMediaProvider jsonFoundMediaProvider, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFoundMediaProvider, jsonGenerator, z);
    }

    public static void _serialize(JsonFoundMediaProvider jsonFoundMediaProvider, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("display_name", jsonFoundMediaProvider.a);
        List<FoundMediaImageVariant> list = jsonFoundMediaProvider.b;
        if (list != null) {
            jsonGenerator.a("icon_images");
            jsonGenerator.a();
            for (FoundMediaImageVariant foundMediaImageVariant : list) {
                if (foundMediaImageVariant != null) {
                    LoganSquare.typeConverterFor(FoundMediaImageVariant.class).serialize(foundMediaImageVariant, "lslocalicon_imagesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("name", jsonFoundMediaProvider.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
