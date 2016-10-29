package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.search.JsonSearchSocialProof.Users;
import com.twitter.model.json.search.JsonSearchSocialProof.Users.Name;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonSearchSocialProof$Users$$JsonObjectMapper extends JsonMapper<Users> {
    public Users parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static Users _parse(JsonParser jsonParser) throws IOException {
        Users users = new Users();
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
            parseField(users, e, jsonParser);
            jsonParser.c();
        }
        return users;
    }

    public static void parseField(Users users, String str, JsonParser jsonParser) throws IOException {
        if (!"users".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                Name _parse = JsonSearchSocialProof$Users$Name$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            users.a = (Name[]) arrayList.toArray(new Name[arrayList.size()]);
            return;
        }
        users.a = null;
    }

    public void serialize(Users users, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(users, jsonGenerator, z);
    }

    public static void _serialize(Users users, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Name[] nameArr = users.a;
        if (nameArr != null) {
            jsonGenerator.a("users");
            jsonGenerator.a();
            for (Name name : nameArr) {
                if (name != null) {
                    JsonSearchSocialProof$Users$Name$$JsonObjectMapper._serialize(name, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
