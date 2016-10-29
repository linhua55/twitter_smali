package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.geo.JsonTwitterPlace.CoordinateArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterPlace$CoordinateArray$$JsonObjectMapper extends JsonMapper<CoordinateArray> {
    public CoordinateArray parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static CoordinateArray _parse(JsonParser jsonParser) throws IOException {
        CoordinateArray coordinateArray = new CoordinateArray();
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
            parseField(coordinateArray, e, jsonParser);
            jsonParser.c();
        }
        return coordinateArray;
    }

    public static void parseField(CoordinateArray coordinateArray, String str, JsonParser jsonParser) throws IOException {
        if (!"coordinates".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                Object arrayList2;
                if (jsonParser.d() == JsonToken.d) {
                    arrayList2 = new ArrayList();
                    while (jsonParser.a() != JsonToken.e) {
                        Object arrayList3;
                        if (jsonParser.d() == JsonToken.d) {
                            arrayList3 = new ArrayList();
                            while (jsonParser.a() != JsonToken.e) {
                                Object valueOf = jsonParser.d() == JsonToken.m ? null : Double.valueOf(jsonParser.q());
                                if (valueOf != null) {
                                    arrayList3.add(valueOf);
                                }
                            }
                        } else {
                            arrayList3 = null;
                        }
                        if (arrayList3 != null) {
                            arrayList2.add(arrayList3);
                        }
                    }
                } else {
                    arrayList2 = null;
                }
                if (arrayList2 != null) {
                    arrayList.add(arrayList2);
                }
            }
            coordinateArray.a = arrayList;
            return;
        }
        coordinateArray.a = null;
    }

    public void serialize(CoordinateArray coordinateArray, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(coordinateArray, jsonGenerator, z);
    }

    public static void _serialize(CoordinateArray coordinateArray, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<List> list = coordinateArray.a;
        if (list != null) {
            jsonGenerator.a("coordinates");
            jsonGenerator.a();
            for (List<List> list2 : list2) {
                if (list2 != null) {
                    jsonGenerator.a();
                    for (List<Double> list3 : list2) {
                        if (list3 != null) {
                            jsonGenerator.a();
                            for (Double doubleValue : list3) {
                                jsonGenerator.a(doubleValue.doubleValue());
                            }
                            jsonGenerator.b();
                        }
                    }
                    jsonGenerator.b();
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
