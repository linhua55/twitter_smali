package com.twitter.model.json.pc;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.pc.JsonPromotedContent.PromotedContentAdvertiser;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonPromotedContent$PromotedContentAdvertiser$$JsonObjectMapper extends JsonMapper<PromotedContentAdvertiser> {
    public PromotedContentAdvertiser parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static PromotedContentAdvertiser _parse(JsonParser jsonParser) throws IOException {
        PromotedContentAdvertiser promotedContentAdvertiser = new PromotedContentAdvertiser();
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
            parseField(promotedContentAdvertiser, e, jsonParser);
            jsonParser.c();
        }
        return promotedContentAdvertiser;
    }

    public static void parseField(PromotedContentAdvertiser promotedContentAdvertiser, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            promotedContentAdvertiser.a = jsonParser.p();
        }
    }

    public void serialize(PromotedContentAdvertiser promotedContentAdvertiser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(promotedContentAdvertiser, jsonGenerator, z);
    }

    public static void _serialize(PromotedContentAdvertiser promotedContentAdvertiser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", promotedContentAdvertiser.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
