package com.twitter.library.api.timeline;

import cfb;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.library.api.t;
import com.twitter.model.core.cm;
import com.twitter.model.json.common.g;
import com.twitter.model.timeline.bw;
import com.twitter.model.timeline.by;
import com.twitter.util.collection.n;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public class af extends t<List<bw>, Void> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected Void b(JsonParser jsonParser, int i) throws IOException {
        cfb.d("StatusListEntityPR", "Failed with parse error on status-code: " + i);
        return null;
    }

    protected List<bw> b(JsonParser jsonParser) throws IOException {
        List<cm> d = g.d(jsonParser, cm.class);
        n a = n.a(d.size());
        for (cm cmVar : d) {
            a.c(((by) ((by) ((by) new by().a(cmVar).a(cmVar.b)).b(cmVar.J)).b(cmVar.bg_())).r());
        }
        return (List) a.q();
    }
}
