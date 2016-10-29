package defpackage;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.library.api.t;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import com.twitter.model.json.common.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bnu */
class bnu extends t<List<cm>, cd> {
    bnu() {
    }

    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected cd b(JsonParser jsonParser, int i) throws IOException {
        return (cd) g.c(jsonParser, cd.class);
    }

    protected List<cm> b(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        List<cm> arrayList = new ArrayList();
        while (a != null && a != JsonToken.END_ARRAY) {
            if (a == JsonToken.START_OBJECT) {
                arrayList.add(g.c(jsonParser, cm.class));
            }
            a = jsonParser.a();
        }
        return arrayList;
    }
}
