package com.twitter.model.json.livepipeline;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.common.g;
import com.twitter.model.json.common.m;
import com.twitter.model.livepipeline.PipelineEventType;
import com.twitter.model.livepipeline.e;
import com.twitter.model.livepipeline.f;
import com.twitter.util.collection.r;
import com.twitter.util.object.ObjectUtils;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
public class a extends m<e> {
    protected static final Map<String, Class<? extends f>> a;

    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    static {
        r d = r.d();
        for (PipelineEventType pipelineEventType : PipelineEventType.values()) {
            if (pipelineEventType.builder != null) {
                d.b(pipelineEventType.canonicalName, pipelineEventType.builder);
            }
        }
        a = (Map) d.q();
    }

    public e a(JsonParser jsonParser) throws IOException {
        PipelineEventType pipelineEventType = null;
        if (jsonParser.d() == null) {
            jsonParser.a();
        }
        if (jsonParser.d() != JsonToken.b) {
            jsonParser.c();
            return null;
        }
        String str = null;
        f fVar = null;
        while (jsonParser.a() != JsonToken.c) {
            String e = jsonParser.e();
            jsonParser.a();
            if ("payload".equals(e)) {
                fVar = b(jsonParser);
            } else if ("topic".equals(e)) {
                str = jsonParser.a("");
                String[] split = str.split("/");
                if (split.length > 2) {
                    pipelineEventType = PipelineEventType.b("system".equals(split[1]) ? split[2] : split[1]);
                }
            }
            jsonParser.c();
        }
        if (fVar == null || str == null || pipelineEventType == null) {
            throw new JsonParseException("JSON for PipelineEvent missing expected values", jsonParser.f());
        }
        fVar.a(pipelineEventType).b(str);
        return (e) ObjectUtils.a(fVar.q());
    }

    protected static f b(JsonParser jsonParser) throws IOException {
        f fVar = null;
        if (jsonParser.d() == null) {
            jsonParser.a();
        }
        if (jsonParser.d() != JsonToken.b) {
            jsonParser.c();
        } else {
            while (jsonParser.a() != JsonToken.c) {
                String e = jsonParser.e();
                jsonParser.a();
                if (a.containsKey(e)) {
                    if (fVar == null) {
                        fVar = (f) ObjectUtils.a(g.c(jsonParser, (Class) a.get(e)));
                    } else {
                        throw new JsonParseException("'payload' can only contain 1 known object", jsonParser.f());
                    }
                }
                jsonParser.c();
            }
        }
        return fVar;
    }
}
