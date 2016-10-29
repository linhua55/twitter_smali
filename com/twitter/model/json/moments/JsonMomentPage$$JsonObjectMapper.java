package com.twitter.model.json.moments;

import ckz;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.moments.MomentPageType;
import com.twitter.model.moments.u;
import com.twitter.model.moments.x;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMomentPage$$JsonObjectMapper extends JsonMapper<JsonMomentPage> {
    public JsonMomentPage parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMomentPage _parse(JsonParser jsonParser) throws IOException {
        JsonMomentPage jsonMomentPage = new JsonMomentPage();
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
            parseField(jsonMomentPage, e, jsonParser);
            jsonParser.c();
        }
        return jsonMomentPage;
    }

    public static void parseField(JsonMomentPage jsonMomentPage, String str, JsonParser jsonParser) throws IOException {
        if ("hide_url_entities".equals(str)) {
            jsonMomentPage.g = (u) LoganSquare.typeConverterFor(u.class).parse(jsonParser);
        } else if ("link_title_card".equals(str)) {
            jsonMomentPage.e = (x) LoganSquare.typeConverterFor(x.class).parse(jsonParser);
        } else if ("media".equals(str)) {
            jsonMomentPage.c = (ckz) LoganSquare.typeConverterFor(ckz.class).parse(jsonParser);
        } else if ("moment_link".equals(str)) {
            jsonMomentPage.h = JsonMomentModule$$JsonObjectMapper._parse(jsonParser);
        } else if ("page_id".equals(str)) {
            jsonMomentPage.a = jsonParser.a(null);
        } else if ("render".equals(str)) {
            jsonMomentPage.d = JsonRenderData$$JsonObjectMapper._parse(jsonParser);
        } else if ("tweet_id".equals(str)) {
            jsonMomentPage.b = jsonParser.p();
        } else if ("type".equals(str)) {
            jsonMomentPage.f = (MomentPageType) LoganSquare.typeConverterFor(MomentPageType.class).parse(jsonParser);
        }
    }

    public void serialize(JsonMomentPage jsonMomentPage, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMomentPage, jsonGenerator, z);
    }

    public static void _serialize(JsonMomentPage jsonMomentPage, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonMomentPage.g != null) {
            LoganSquare.typeConverterFor(u.class).serialize(jsonMomentPage.g, "hide_url_entities", true, jsonGenerator);
        }
        if (jsonMomentPage.e != null) {
            LoganSquare.typeConverterFor(x.class).serialize(jsonMomentPage.e, "link_title_card", true, jsonGenerator);
        }
        if (jsonMomentPage.c != null) {
            LoganSquare.typeConverterFor(ckz.class).serialize(jsonMomentPage.c, "media", true, jsonGenerator);
        }
        if (jsonMomentPage.h != null) {
            jsonGenerator.a("moment_link");
            JsonMomentModule$$JsonObjectMapper._serialize(jsonMomentPage.h, jsonGenerator, true);
        }
        jsonGenerator.a("page_id", jsonMomentPage.a);
        if (jsonMomentPage.d != null) {
            jsonGenerator.a("render");
            JsonRenderData$$JsonObjectMapper._serialize(jsonMomentPage.d, jsonGenerator, true);
        }
        jsonGenerator.a("tweet_id", jsonMomentPage.b);
        if (jsonMomentPage.f != null) {
            LoganSquare.typeConverterFor(MomentPageType.class).serialize(jsonMomentPage.f, "type", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
