package com.twitter.model.json.featureswitch;

import cic;
import cid;
import cie;
import cje;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public final class JsonLocalFeatureSwitchesConfiguration$$JsonObjectMapper extends JsonMapper<JsonLocalFeatureSwitchesConfiguration> {
    public JsonLocalFeatureSwitchesConfiguration parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonLocalFeatureSwitchesConfiguration _parse(JsonParser jsonParser) throws IOException {
        JsonLocalFeatureSwitchesConfiguration jsonLocalFeatureSwitchesConfiguration = new JsonLocalFeatureSwitchesConfiguration();
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
            parseField(jsonLocalFeatureSwitchesConfiguration, e, jsonParser);
            jsonParser.c();
        }
        return jsonLocalFeatureSwitchesConfiguration;
    }

    public static void parseField(JsonLocalFeatureSwitchesConfiguration jsonLocalFeatureSwitchesConfiguration, String str, JsonParser jsonParser) throws IOException {
        Set hashSet;
        String a;
        if ("experiment_names".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                hashSet = new HashSet();
                while (jsonParser.a() != JsonToken.e) {
                    a = jsonParser.a(null);
                    if (a != null) {
                        hashSet.add(a);
                    }
                }
                jsonLocalFeatureSwitchesConfiguration.c = hashSet;
                return;
            }
            jsonLocalFeatureSwitchesConfiguration.c = null;
        } else if ("debug".equals(str)) {
            jsonLocalFeatureSwitchesConfiguration.d = (cic) LoganSquare.typeConverterFor(cic.class).parse(jsonParser);
        } else if ("default".equals(str)) {
            jsonLocalFeatureSwitchesConfiguration.a = (cid) LoganSquare.typeConverterFor(cid.class).parse(jsonParser);
        } else if ("embedded_experiments".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cie cie = (cie) LoganSquare.typeConverterFor(cie.class).parse(jsonParser);
                    if (cie != null) {
                        arrayList.add(cie);
                    }
                }
                jsonLocalFeatureSwitchesConfiguration.e = arrayList;
                return;
            }
            jsonLocalFeatureSwitchesConfiguration.e = null;
        } else if ("requires_restart".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                hashSet = new HashSet();
                while (jsonParser.a() != JsonToken.e) {
                    a = jsonParser.a(null);
                    if (a != null) {
                        hashSet.add(a);
                    }
                }
                jsonLocalFeatureSwitchesConfiguration.b = hashSet;
                return;
            }
            jsonLocalFeatureSwitchesConfiguration.b = null;
        } else if ("versions".equals(str)) {
            jsonLocalFeatureSwitchesConfiguration.f = (cje) LoganSquare.typeConverterFor(cje.class).parse(jsonParser);
        }
    }

    public void serialize(JsonLocalFeatureSwitchesConfiguration jsonLocalFeatureSwitchesConfiguration, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonLocalFeatureSwitchesConfiguration, jsonGenerator, z);
    }

    public static void _serialize(JsonLocalFeatureSwitchesConfiguration jsonLocalFeatureSwitchesConfiguration, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Set<String> set = jsonLocalFeatureSwitchesConfiguration.c;
        if (set != null) {
            jsonGenerator.a("experiment_names");
            jsonGenerator.a();
            for (String b : set) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        if (jsonLocalFeatureSwitchesConfiguration.d != null) {
            LoganSquare.typeConverterFor(cic.class).serialize(jsonLocalFeatureSwitchesConfiguration.d, "debug", true, jsonGenerator);
        }
        if (jsonLocalFeatureSwitchesConfiguration.a != null) {
            LoganSquare.typeConverterFor(cid.class).serialize(jsonLocalFeatureSwitchesConfiguration.a, "default", true, jsonGenerator);
        }
        List<cie> list = jsonLocalFeatureSwitchesConfiguration.e;
        if (list != null) {
            jsonGenerator.a("embedded_experiments");
            jsonGenerator.a();
            for (cie cie : list) {
                if (cie != null) {
                    LoganSquare.typeConverterFor(cie.class).serialize(cie, "lslocalembedded_experimentsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        set = jsonLocalFeatureSwitchesConfiguration.b;
        if (set != null) {
            jsonGenerator.a("requires_restart");
            jsonGenerator.a();
            for (String b2 : set) {
                jsonGenerator.b(b2);
            }
            jsonGenerator.b();
        }
        if (jsonLocalFeatureSwitchesConfiguration.f != null) {
            LoganSquare.typeConverterFor(cje.class).serialize(jsonLocalFeatureSwitchesConfiguration.f, "versions", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
