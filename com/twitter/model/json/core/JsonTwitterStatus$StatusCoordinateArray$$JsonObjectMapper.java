package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonTwitterStatus.StatusCoordinateArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterStatus$StatusCoordinateArray$$JsonObjectMapper extends JsonMapper<StatusCoordinateArray> {
    public StatusCoordinateArray parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static StatusCoordinateArray _parse(JsonParser jsonParser) throws IOException {
        StatusCoordinateArray statusCoordinateArray = new StatusCoordinateArray();
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
            parseField(statusCoordinateArray, e, jsonParser);
            jsonParser.c();
        }
        return statusCoordinateArray;
    }

    public static void parseField(StatusCoordinateArray statusCoordinateArray, String str, JsonParser jsonParser) throws IOException {
        if (!"coordinates".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                Object valueOf = jsonParser.d() == JsonToken.m ? null : Double.valueOf(jsonParser.q());
                if (valueOf != null) {
                    arrayList.add(valueOf);
                }
            }
            statusCoordinateArray.a = (Double[]) arrayList.toArray(new Double[arrayList.size()]);
            return;
        }
        statusCoordinateArray.a = null;
    }

    public void serialize(StatusCoordinateArray statusCoordinateArray, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(statusCoordinateArray, jsonGenerator, z);
    }

    public static void _serialize(StatusCoordinateArray statusCoordinateArray, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Double[] dArr = statusCoordinateArray.a;
        if (dArr != null) {
            jsonGenerator.a("coordinates");
            jsonGenerator.a();
            for (Double doubleValue : dArr) {
                jsonGenerator.a(doubleValue.doubleValue());
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
