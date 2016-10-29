package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.cm;
import com.twitter.model.people.aj;
import com.twitter.model.people.am;
import com.twitter.model.people.l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonModulePage$$JsonObjectMapper extends JsonMapper<JsonModulePage> {
    public JsonModulePage parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonModulePage _parse(JsonParser jsonParser) throws IOException {
        JsonModulePage jsonModulePage = new JsonModulePage();
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
            parseField(jsonModulePage, e, jsonParser);
            jsonParser.c();
        }
        return jsonModulePage;
    }

    public static void parseField(JsonModulePage jsonModulePage, String str, JsonParser jsonParser) throws IOException {
        if ("action".equals(str)) {
            jsonModulePage.d = (aj) LoganSquare.typeConverterFor(aj.class).parse(jsonParser);
        } else if ("details".equals(str)) {
            jsonModulePage.c = jsonParser.a(null);
        } else if ("header".equals(str)) {
            jsonModulePage.b = (l) LoganSquare.typeConverterFor(l.class).parse(jsonParser);
        } else if ("social_text".equals(str)) {
            jsonModulePage.g = jsonParser.a(null);
        } else if ("tweets".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                r1 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cm cmVar = (cm) LoganSquare.typeConverterFor(cm.class).parse(jsonParser);
                    if (cmVar != null) {
                        r1.add(cmVar);
                    }
                }
                jsonModulePage.f = r1;
                return;
            }
            jsonModulePage.f = null;
        } else if (!"user_recommendations".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                r1 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    am amVar = (am) LoganSquare.typeConverterFor(am.class).parse(jsonParser);
                    if (amVar != null) {
                        r1.add(amVar);
                    }
                }
                jsonModulePage.e = r1;
                return;
            }
            jsonModulePage.e = null;
        }
    }

    public void serialize(JsonModulePage jsonModulePage, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonModulePage, jsonGenerator, z);
    }

    public static void _serialize(JsonModulePage jsonModulePage, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonModulePage.d != null) {
            LoganSquare.typeConverterFor(aj.class).serialize(jsonModulePage.d, "action", true, jsonGenerator);
        }
        jsonGenerator.a("details", jsonModulePage.c);
        if (jsonModulePage.b != null) {
            LoganSquare.typeConverterFor(l.class).serialize(jsonModulePage.b, "header", true, jsonGenerator);
        }
        jsonGenerator.a("social_text", jsonModulePage.g);
        List<cm> list = jsonModulePage.f;
        if (list != null) {
            jsonGenerator.a("tweets");
            jsonGenerator.a();
            for (cm cmVar : list) {
                if (cmVar != null) {
                    LoganSquare.typeConverterFor(cm.class).serialize(cmVar, "lslocaltweetsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        List<am> list2 = jsonModulePage.e;
        if (list2 != null) {
            jsonGenerator.a("user_recommendations");
            jsonGenerator.a();
            for (am amVar : list2) {
                if (amVar != null) {
                    LoganSquare.typeConverterFor(am.class).serialize(amVar, "lslocaluser_recommendationsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
