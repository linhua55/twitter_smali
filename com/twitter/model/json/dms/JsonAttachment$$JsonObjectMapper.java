package com.twitter.model.json.dms;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonAttachment$$JsonObjectMapper {
    public static void parseField(JsonAttachment jsonAttachment, String str, JsonParser jsonParser) throws IOException {
        if ("display_url".equals(str)) {
            jsonAttachment.b = jsonParser.a(null);
        } else if ("expanded_url".equals(str)) {
            jsonAttachment.c = jsonParser.a(null);
        } else if ("indices".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List<Integer> arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    arrayList.add(Integer.valueOf(jsonParser.o()));
                }
                int[] iArr = new int[arrayList.size()];
                int i = 0;
                for (Integer intValue : arrayList) {
                    int i2 = i + 1;
                    iArr[i] = intValue.intValue();
                    i = i2;
                }
                jsonAttachment.d = iArr;
                return;
            }
            jsonAttachment.d = null;
        } else if ("url".equals(str)) {
            jsonAttachment.a = jsonParser.a(null);
        }
    }

    public static void _serialize(JsonAttachment jsonAttachment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("display_url", jsonAttachment.b);
        jsonGenerator.a("expanded_url", jsonAttachment.c);
        int[] iArr = jsonAttachment.d;
        if (iArr != null) {
            jsonGenerator.a("indices");
            jsonGenerator.a();
            for (int b : iArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("url", jsonAttachment.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
