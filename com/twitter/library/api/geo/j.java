package com.twitter.library.api.geo;

import com.fasterxml.jackson.core.JsonParser;
import com.twitter.library.api.t;
import com.twitter.model.core.cd;
import com.twitter.model.geo.m;
import com.twitter.model.json.common.g;
import java.io.IOException;

/* compiled from: Twttr */
public class j extends t<m, cd> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected m b(JsonParser jsonParser) throws IOException {
        return (m) g.c(jsonParser, m.class);
    }

    protected cd b(JsonParser jsonParser, int i) throws IOException {
        return (cd) g.c(jsonParser, cd.class);
    }
}
