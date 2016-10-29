package com.twitter.model.json.pc;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.pc.JsonPromotedContent.PromotedContentTrend;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonPromotedContent$PromotedContentTrend$$JsonObjectMapper extends JsonMapper<PromotedContentTrend> {
    public PromotedContentTrend parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static PromotedContentTrend _parse(JsonParser jsonParser) throws IOException {
        PromotedContentTrend promotedContentTrend = new PromotedContentTrend();
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
            parseField(promotedContentTrend, e, jsonParser);
            jsonParser.c();
        }
        return promotedContentTrend;
    }

    public static void parseField(PromotedContentTrend promotedContentTrend, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            promotedContentTrend.a = jsonParser.p();
        } else if ("name".equals(str)) {
            promotedContentTrend.b = jsonParser.a(null);
        }
    }

    public void serialize(PromotedContentTrend promotedContentTrend, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(promotedContentTrend, jsonGenerator, z);
    }

    public static void _serialize(PromotedContentTrend promotedContentTrend, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", promotedContentTrend.a);
        jsonGenerator.a("name", promotedContentTrend.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
