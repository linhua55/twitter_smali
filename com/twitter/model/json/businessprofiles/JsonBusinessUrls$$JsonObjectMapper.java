package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.businessprofiles.al;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonBusinessUrls$$JsonObjectMapper extends JsonMapper<JsonBusinessUrls> {
    public JsonBusinessUrls parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonBusinessUrls _parse(JsonParser jsonParser) throws IOException {
        JsonBusinessUrls jsonBusinessUrls = new JsonBusinessUrls();
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
            parseField(jsonBusinessUrls, e, jsonParser);
            jsonParser.c();
        }
        return jsonBusinessUrls;
    }

    public static void parseField(JsonBusinessUrls jsonBusinessUrls, String str, JsonParser jsonParser) throws IOException {
        if ("book_url".equals(str)) {
            jsonBusinessUrls.d = (al) LoganSquare.typeConverterFor(al.class).parse(jsonParser);
        } else if ("menu_url".equals(str)) {
            jsonBusinessUrls.b = (al) LoganSquare.typeConverterFor(al.class).parse(jsonParser);
        } else if ("shop_url".equals(str)) {
            jsonBusinessUrls.e = (al) LoganSquare.typeConverterFor(al.class).parse(jsonParser);
        } else if ("video_url".equals(str)) {
            jsonBusinessUrls.c = (al) LoganSquare.typeConverterFor(al.class).parse(jsonParser);
        } else if ("website_url".equals(str)) {
            jsonBusinessUrls.a = (al) LoganSquare.typeConverterFor(al.class).parse(jsonParser);
        }
    }

    public void serialize(JsonBusinessUrls jsonBusinessUrls, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonBusinessUrls, jsonGenerator, z);
    }

    public static void _serialize(JsonBusinessUrls jsonBusinessUrls, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonBusinessUrls.d != null) {
            LoganSquare.typeConverterFor(al.class).serialize(jsonBusinessUrls.d, "book_url", true, jsonGenerator);
        }
        if (jsonBusinessUrls.b != null) {
            LoganSquare.typeConverterFor(al.class).serialize(jsonBusinessUrls.b, "menu_url", true, jsonGenerator);
        }
        if (jsonBusinessUrls.e != null) {
            LoganSquare.typeConverterFor(al.class).serialize(jsonBusinessUrls.e, "shop_url", true, jsonGenerator);
        }
        if (jsonBusinessUrls.c != null) {
            LoganSquare.typeConverterFor(al.class).serialize(jsonBusinessUrls.c, "video_url", true, jsonGenerator);
        }
        if (jsonBusinessUrls.a != null) {
            LoganSquare.typeConverterFor(al.class).serialize(jsonBusinessUrls.a, "website_url", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
