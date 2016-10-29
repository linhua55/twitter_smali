package com.twitter.model.json.account;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonBackupCodeRequest$$JsonObjectMapper extends JsonMapper<JsonBackupCodeRequest> {
    public JsonBackupCodeRequest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonBackupCodeRequest _parse(JsonParser jsonParser) throws IOException {
        JsonBackupCodeRequest jsonBackupCodeRequest = new JsonBackupCodeRequest();
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
            parseField(jsonBackupCodeRequest, e, jsonParser);
            jsonParser.c();
        }
        return jsonBackupCodeRequest;
    }

    public static void parseField(JsonBackupCodeRequest jsonBackupCodeRequest, String str, JsonParser jsonParser) throws IOException {
        if (!"codes".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                String a = jsonParser.a(null);
                if (a != null) {
                    arrayList.add(a);
                }
            }
            jsonBackupCodeRequest.a = (String[]) arrayList.toArray(new String[arrayList.size()]);
            return;
        }
        jsonBackupCodeRequest.a = null;
    }

    public void serialize(JsonBackupCodeRequest jsonBackupCodeRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonBackupCodeRequest, jsonGenerator, z);
    }

    public static void _serialize(JsonBackupCodeRequest jsonBackupCodeRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        String[] strArr = jsonBackupCodeRequest.a;
        if (strArr != null) {
            jsonGenerator.a("codes");
            jsonGenerator.a();
            for (String b : strArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
