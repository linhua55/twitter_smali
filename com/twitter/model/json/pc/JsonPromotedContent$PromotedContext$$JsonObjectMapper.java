package com.twitter.model.json.pc;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.pc.JsonPromotedContent.PromotedContext;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonPromotedContent$PromotedContext$$JsonObjectMapper extends JsonMapper<PromotedContext> {
    public PromotedContext parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static PromotedContext _parse(JsonParser jsonParser) throws IOException {
        PromotedContext promotedContext = new PromotedContext();
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
            parseField(promotedContext, e, jsonParser);
            jsonParser.c();
        }
        return promotedContext;
    }

    public static void parseField(PromotedContext promotedContext, String str, JsonParser jsonParser) throws IOException {
        if ("animations".equals(str)) {
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
                promotedContext.b = iArr;
                return;
            }
            promotedContext.b = null;
        } else if ("impressionId".equals(str)) {
            promotedContext.a = jsonParser.a(null);
        }
    }

    public void serialize(PromotedContext promotedContext, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(promotedContext, jsonGenerator, z);
    }

    public static void _serialize(PromotedContext promotedContext, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        int[] iArr = promotedContext.b;
        if (iArr != null) {
            jsonGenerator.a("animations");
            jsonGenerator.a();
            for (int b : iArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("impressionId", promotedContext.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
