package com.twitter.model.json.client;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonUrlConfiguration$$JsonObjectMapper extends JsonMapper<JsonUrlConfiguration> {
    public JsonUrlConfiguration parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUrlConfiguration _parse(JsonParser jsonParser) throws IOException {
        JsonUrlConfiguration jsonUrlConfiguration = new JsonUrlConfiguration();
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
            parseField(jsonUrlConfiguration, e, jsonParser);
            jsonParser.c();
        }
        return jsonUrlConfiguration;
    }

    public static void parseField(JsonUrlConfiguration jsonUrlConfiguration, String str, JsonParser jsonParser) throws IOException {
        if ("client_event_url".equals(str)) {
            jsonUrlConfiguration.c = jsonParser.a(null);
        } else if ("short_url_length".equals(str)) {
            jsonUrlConfiguration.a = jsonParser.o();
        } else if ("short_url_length_https".equals(str)) {
            jsonUrlConfiguration.b = jsonParser.o();
        } else if (!"non_username_paths".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                jsonUrlConfiguration.d = arrayList;
                return;
            }
            jsonUrlConfiguration.d = null;
        }
    }

    public void serialize(JsonUrlConfiguration jsonUrlConfiguration, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUrlConfiguration, jsonGenerator, z);
    }

    public static void _serialize(JsonUrlConfiguration jsonUrlConfiguration, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("client_event_url", jsonUrlConfiguration.c);
        jsonGenerator.a("short_url_length", jsonUrlConfiguration.a);
        jsonGenerator.a("short_url_length_https", jsonUrlConfiguration.b);
        List<String> list = jsonUrlConfiguration.d;
        if (list != null) {
            jsonGenerator.a("non_username_paths");
            jsonGenerator.a();
            for (String b : list) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
