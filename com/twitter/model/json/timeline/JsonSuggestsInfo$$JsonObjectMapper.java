package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.timeline.aj;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonSuggestsInfo$$JsonObjectMapper extends JsonMapper<JsonSuggestsInfo> {
    public JsonSuggestsInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSuggestsInfo _parse(JsonParser jsonParser) throws IOException {
        JsonSuggestsInfo jsonSuggestsInfo = new JsonSuggestsInfo();
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
            parseField(jsonSuggestsInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonSuggestsInfo;
    }

    public static void parseField(JsonSuggestsInfo jsonSuggestsInfo, String str, JsonParser jsonParser) throws IOException {
        if ("module".equals(str)) {
            jsonSuggestsInfo.a = (aj) LoganSquare.typeConverterFor(aj.class).parse(jsonParser);
        } else if ("moments".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                r0 = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    r1 = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        r0.put(r1, null);
                    } else {
                        r0.put(r1, LoganSquare.typeConverterFor(aj.class).parse(jsonParser));
                    }
                }
                jsonSuggestsInfo.d = r0;
                return;
            }
            jsonSuggestsInfo.d = null;
        } else if ("tweets".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                r0 = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    r1 = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        r0.put(r1, null);
                    } else {
                        r0.put(r1, LoganSquare.typeConverterFor(aj.class).parse(jsonParser));
                    }
                }
                jsonSuggestsInfo.b = r0;
                return;
            }
            jsonSuggestsInfo.b = null;
        } else if (!"users".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.b) {
                r0 = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    r1 = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        r0.put(r1, null);
                    } else {
                        r0.put(r1, LoganSquare.typeConverterFor(aj.class).parse(jsonParser));
                    }
                }
                jsonSuggestsInfo.c = r0;
                return;
            }
            jsonSuggestsInfo.c = null;
        }
    }

    public void serialize(JsonSuggestsInfo jsonSuggestsInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSuggestsInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonSuggestsInfo jsonSuggestsInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonSuggestsInfo.a != null) {
            LoganSquare.typeConverterFor(aj.class).serialize(jsonSuggestsInfo.a, "module", true, jsonGenerator);
        }
        Map map = jsonSuggestsInfo.d;
        if (map != null) {
            jsonGenerator.a("moments");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    LoganSquare.typeConverterFor(aj.class).serialize(entry.getValue(), "lslocalmomentsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.d();
        }
        map = jsonSuggestsInfo.b;
        if (map != null) {
            jsonGenerator.a("tweets");
            jsonGenerator.c();
            for (Entry entry2 : map.entrySet()) {
                jsonGenerator.a(((String) entry2.getKey()).toString());
                if (entry2.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry2.getValue() != null) {
                    LoganSquare.typeConverterFor(aj.class).serialize(entry2.getValue(), "lslocaltweetsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.d();
        }
        map = jsonSuggestsInfo.c;
        if (map != null) {
            jsonGenerator.a("users");
            jsonGenerator.c();
            for (Entry entry22 : map.entrySet()) {
                jsonGenerator.a(((String) entry22.getKey()).toString());
                if (entry22.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry22.getValue() != null) {
                    LoganSquare.typeConverterFor(aj.class).serialize(entry22.getValue(), "lslocalusersElement", false, jsonGenerator);
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
