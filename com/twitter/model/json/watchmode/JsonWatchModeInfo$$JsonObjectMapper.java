package com.twitter.model.json.watchmode;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.cm;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonWatchModeInfo$$JsonObjectMapper extends JsonMapper<JsonWatchModeInfo> {
    public JsonWatchModeInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonWatchModeInfo _parse(JsonParser jsonParser) throws IOException {
        JsonWatchModeInfo jsonWatchModeInfo = new JsonWatchModeInfo();
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
            parseField(jsonWatchModeInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonWatchModeInfo;
    }

    public static void parseField(JsonWatchModeInfo jsonWatchModeInfo, String str, JsonParser jsonParser) throws IOException {
        if ("section_name".equals(str)) {
            jsonWatchModeInfo.a = jsonParser.a(null);
        } else if ("section_type".equals(str)) {
            jsonWatchModeInfo.b = jsonParser.a(null);
        } else if ("status_metadata".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    JsonWatchModeSectionStatusMetadata _parse = JsonWatchModeSectionStatusMetadata$$JsonObjectMapper._parse(jsonParser);
                    if (_parse != null) {
                        arrayList.add(_parse);
                    }
                }
                jsonWatchModeInfo.d = arrayList;
                return;
            }
            jsonWatchModeInfo.d = null;
        } else if (!"statuses".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList2 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cm cmVar = (cm) LoganSquare.typeConverterFor(cm.class).parse(jsonParser);
                    if (cmVar != null) {
                        arrayList2.add(cmVar);
                    }
                }
                jsonWatchModeInfo.c = arrayList2;
                return;
            }
            jsonWatchModeInfo.c = null;
        }
    }

    public void serialize(JsonWatchModeInfo jsonWatchModeInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonWatchModeInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonWatchModeInfo jsonWatchModeInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("section_name", jsonWatchModeInfo.a);
        jsonGenerator.a("section_type", jsonWatchModeInfo.b);
        List<JsonWatchModeSectionStatusMetadata> list = jsonWatchModeInfo.d;
        if (list != null) {
            jsonGenerator.a("status_metadata");
            jsonGenerator.a();
            for (JsonWatchModeSectionStatusMetadata jsonWatchModeSectionStatusMetadata : list) {
                if (jsonWatchModeSectionStatusMetadata != null) {
                    JsonWatchModeSectionStatusMetadata$$JsonObjectMapper._serialize(jsonWatchModeSectionStatusMetadata, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        List<cm> list2 = jsonWatchModeInfo.c;
        if (list2 != null) {
            jsonGenerator.a("statuses");
            jsonGenerator.a();
            for (cm cmVar : list2) {
                if (cmVar != null) {
                    LoganSquare.typeConverterFor(cm.class).serialize(cmVar, "lslocalstatusesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
