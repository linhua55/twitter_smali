package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.search.JsonSearchSocialProof.Users.Name;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonSearchSocialProof$Users$Name$$JsonObjectMapper extends JsonMapper<Name> {
    public Name parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static Name _parse(JsonParser jsonParser) throws IOException {
        Name name = new Name();
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
            parseField(name, e, jsonParser);
            jsonParser.c();
        }
        return name;
    }

    public static void parseField(Name name, String str, JsonParser jsonParser) throws IOException {
        if ("name".equals(str)) {
            name.a = jsonParser.a(null);
        }
    }

    public void serialize(Name name, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(name, jsonGenerator, z);
    }

    public static void _serialize(Name name, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("name", name.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
