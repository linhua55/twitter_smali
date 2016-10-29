package com.twitter.library.api.dm.requests;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.library.api.t;
import com.twitter.model.core.cd;
import com.twitter.model.json.common.g;
import defpackage.bji;
import java.io.IOException;

/* compiled from: Twttr */
public class p extends t<bji, cd> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected bji b(JsonParser jsonParser) throws IOException {
        JsonToken d = jsonParser.d();
        while (d != null && d != JsonToken.END_ARRAY) {
            if (d == JsonToken.START_OBJECT) {
                return bji.a(jsonParser);
            }
            d = jsonParser.a();
        }
        return null;
    }

    protected cd b(JsonParser jsonParser, int i) throws IOException {
        return (cd) g.c(jsonParser, cd.class);
    }
}
