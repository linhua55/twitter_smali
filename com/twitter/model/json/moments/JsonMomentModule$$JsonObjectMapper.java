package com.twitter.model.json.moments;

import clf;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.cm;
import com.twitter.model.moments.DisplayStyle;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonMomentModule$$JsonObjectMapper extends JsonMapper<JsonMomentModule> {
    public JsonMomentModule parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMomentModule _parse(JsonParser jsonParser) throws IOException {
        JsonMomentModule jsonMomentModule = new JsonMomentModule();
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
            parseField(jsonMomentModule, e, jsonParser);
            jsonParser.c();
        }
        return jsonMomentModule;
    }

    public static void parseField(JsonMomentModule jsonMomentModule, String str, JsonParser jsonParser) throws IOException {
        if ("context".equals(str)) {
            jsonMomentModule.g = JsonMomentModule$JsonMomentContext$$JsonObjectMapper._parse(jsonParser);
        } else if ("cover_format".equals(str)) {
            jsonMomentModule.e = JsonMomentPage$$JsonObjectMapper._parse(jsonParser);
        } else if ("display_style".equals(str)) {
            jsonMomentModule.f = (DisplayStyle) LoganSquare.typeConverterFor(DisplayStyle.class).parse(jsonParser);
        } else if ("moment".equals(str)) {
            jsonMomentModule.a = JsonMoment$$JsonObjectMapper._parse(jsonParser);
        } else if ("pages".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    clf clf = (clf) LoganSquare.typeConverterFor(clf.class).parse(jsonParser);
                    if (clf != null) {
                        arrayList.add(clf);
                    }
                }
                jsonMomentModule.c = arrayList;
                return;
            }
            jsonMomentModule.c = null;
        } else if ("total_pages".equals(str)) {
            jsonMomentModule.d = jsonParser.o();
        } else if (!"tweets".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.b) {
                Map hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    String g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, LoganSquare.typeConverterFor(cm.class).parse(jsonParser));
                    }
                }
                jsonMomentModule.b = hashMap;
                return;
            }
            jsonMomentModule.b = null;
        }
    }

    public void serialize(JsonMomentModule jsonMomentModule, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMomentModule, jsonGenerator, z);
    }

    public static void _serialize(JsonMomentModule jsonMomentModule, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonMomentModule.g != null) {
            jsonGenerator.a("context");
            JsonMomentModule$JsonMomentContext$$JsonObjectMapper._serialize(jsonMomentModule.g, jsonGenerator, true);
        }
        if (jsonMomentModule.e != null) {
            jsonGenerator.a("cover_format");
            JsonMomentPage$$JsonObjectMapper._serialize(jsonMomentModule.e, jsonGenerator, true);
        }
        if (jsonMomentModule.f != null) {
            LoganSquare.typeConverterFor(DisplayStyle.class).serialize(jsonMomentModule.f, "display_style", true, jsonGenerator);
        }
        if (jsonMomentModule.a != null) {
            jsonGenerator.a("moment");
            JsonMoment$$JsonObjectMapper._serialize(jsonMomentModule.a, jsonGenerator, true);
        }
        List<clf> list = jsonMomentModule.c;
        if (list != null) {
            jsonGenerator.a("pages");
            jsonGenerator.a();
            for (clf clf : list) {
                if (clf != null) {
                    LoganSquare.typeConverterFor(clf.class).serialize(clf, "lslocalpagesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("total_pages", jsonMomentModule.d);
        Map map = jsonMomentModule.b;
        if (map != null) {
            jsonGenerator.a("tweets");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    LoganSquare.typeConverterFor(cm.class).serialize(entry.getValue(), "lslocaltweetsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
