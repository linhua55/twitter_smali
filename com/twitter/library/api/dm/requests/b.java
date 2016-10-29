package com.twitter.library.api.dm.requests;

import com.fasterxml.jackson.core.JsonParser;
import com.twitter.library.api.t;
import com.twitter.model.core.cd;
import com.twitter.model.json.common.g;
import defpackage.bgt;
import java.io.IOException;

/* compiled from: Twttr */
class b extends t<bgt, cd> {
    b() {
    }

    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected bgt b(JsonParser jsonParser) throws IOException {
        return bgt.a(jsonParser);
    }

    protected cd b(JsonParser jsonParser, int i) throws IOException {
        return (cd) g.c(jsonParser, cd.class);
    }
}
