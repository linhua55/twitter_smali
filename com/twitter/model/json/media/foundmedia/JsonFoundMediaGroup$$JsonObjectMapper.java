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
public final class JsonFoundMediaGroup$$JsonObjectMapper extends JsonMapper<JsonFoundMediaGroup> {
    public JsonFoundMediaGroup parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFoundMediaGroup _parse(JsonParser jsonParser) throws IOException {
        JsonFoundMediaGroup jsonFoundMediaGroup = new JsonFoundMediaGroup();
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
            parseField(jsonFoundMediaGroup, e, jsonParser);
            jsonParser.c();
        }
        return jsonFoundMediaGroup;
    }

    public static void parseField(JsonFoundMediaGroup jsonFoundMediaGroup, String str, JsonParser jsonParser) throws IOException {
        if ("display_name".equals(str)) {
            jsonFoundMediaGroup.a = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonFoundMediaGroup.b = jsonParser.a(null);
        } else if ("original_image".equals(str)) {
            jsonFoundMediaGroup.d = (FoundMediaImageVariant) LoganSquare.typeConverterFor(FoundMediaImageVariant.class).parse(jsonParser);
        } else if (!"thumbnail_images".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    FoundMediaImageVariant foundMediaImageVariant = (FoundMediaImageVariant) LoganSquare.typeConverterFor(FoundMediaImageVariant.class).parse(jsonParser);
                    if (foundMediaImageVariant != null) {
                        arrayList.add(foundMediaImageVariant);
                    }
                }
                jsonFoundMediaGroup.c = arrayList;
                return;
            }
            jsonFoundMediaGroup.c = null;
        }
    }

    public void serialize(JsonFoundMediaGroup jsonFoundMediaGroup, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFoundMediaGroup, jsonGenerator, z);
    }

    public static void _serialize(JsonFoundMediaGroup jsonFoundMediaGroup, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("display_name", jsonFoundMediaGroup.a);
        jsonGenerator.a("id", jsonFoundMediaGroup.b);
        if (jsonFoundMediaGroup.d != null) {
            LoganSquare.typeConverterFor(FoundMediaImageVariant.class).serialize(jsonFoundMediaGroup.d, "original_image", true, jsonGenerator);
        }
        List<FoundMediaImageVariant> list = jsonFoundMediaGroup.c;
        if (list != null) {
            jsonGenerator.a("thumbnail_images");
            jsonGenerator.a();
            for (FoundMediaImageVariant foundMediaImageVariant : list) {
                if (foundMediaImageVariant != null) {
                    LoganSquare.typeConverterFor(FoundMediaImageVariant.class).serialize(foundMediaImageVariant, "lslocalthumbnail_imagesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
