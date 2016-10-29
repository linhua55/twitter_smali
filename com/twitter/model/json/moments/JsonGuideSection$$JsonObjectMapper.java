package com.twitter.model.json.moments;

import clc;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.moments.MomentGuideSectionType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonGuideSection$$JsonObjectMapper extends JsonMapper<JsonGuideSection> {
    public JsonGuideSection parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGuideSection _parse(JsonParser jsonParser) throws IOException {
        JsonGuideSection jsonGuideSection = new JsonGuideSection();
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
            parseField(jsonGuideSection, e, jsonParser);
            jsonParser.c();
        }
        return jsonGuideSection;
    }

    public static void parseField(JsonGuideSection jsonGuideSection, String str, JsonParser jsonParser) throws IOException {
        if ("category_id".equals(str)) {
            jsonGuideSection.d = jsonParser.a(null);
        } else if ("footer_deep_link".equals(str)) {
            jsonGuideSection.f = jsonParser.a(null);
        } else if ("footer_text".equals(str)) {
            jsonGuideSection.e = jsonParser.a(null);
        } else if ("module_type".equals(str)) {
            jsonGuideSection.b = (MomentGuideSectionType) LoganSquare.typeConverterFor(MomentGuideSectionType.class).parse(jsonParser);
        } else if ("moments".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    clc clc = (clc) LoganSquare.typeConverterFor(clc.class).parse(jsonParser);
                    if (clc != null) {
                        arrayList.add(clc);
                    }
                }
                jsonGuideSection.c = arrayList;
                return;
            }
            jsonGuideSection.c = null;
        } else if ("title".equals(str)) {
            jsonGuideSection.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonGuideSection jsonGuideSection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGuideSection, jsonGenerator, z);
    }

    public static void _serialize(JsonGuideSection jsonGuideSection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("category_id", jsonGuideSection.d);
        jsonGenerator.a("footer_deep_link", jsonGuideSection.f);
        jsonGenerator.a("footer_text", jsonGuideSection.e);
        if (jsonGuideSection.b != null) {
            LoganSquare.typeConverterFor(MomentGuideSectionType.class).serialize(jsonGuideSection.b, "module_type", true, jsonGenerator);
        }
        List<clc> list = jsonGuideSection.c;
        if (list != null) {
            jsonGenerator.a("moments");
            jsonGenerator.a();
            for (clc clc : list) {
                if (clc != null) {
                    LoganSquare.typeConverterFor(clc.class).serialize(clc, "lslocalmomentsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("title", jsonGuideSection.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
