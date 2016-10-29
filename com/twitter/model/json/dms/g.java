package com.twitter.model.json.dms;

import com.fasterxml.jackson.core.JsonParser;
import com.twitter.model.dms.ar;
import com.twitter.model.json.common.j;
import com.twitter.model.json.common.m;
import com.twitter.util.collection.n;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class g extends m<List<ar>> {
    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    public List<ar> a(JsonParser jsonParser) throws IOException {
        Map a = j.a(com.twitter.model.json.common.g.e(jsonParser, String.class));
        n d = n.d();
        for (Entry entry : a.entrySet()) {
            d.c(new ar(((Long) entry.getKey()).longValue(), Integer.valueOf((String) entry.getValue()).intValue()));
        }
        return (List) d.q();
    }
}
