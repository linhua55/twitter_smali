package defpackage;

import cfb;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.library.api.t;
import com.twitter.model.json.common.g;
import com.twitter.model.json.timeline.urt.JsonTimelineResponse;
import com.twitter.util.object.ObjectUtils;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bnm */
public class bnm extends t<cod, Void> {
    private final cog a;

    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    public bnm(cog cog) {
        this.a = cog;
    }

    protected Void b(JsonParser jsonParser, int i) throws IOException {
        cfb.d("URT_Parser_Reader", "Failed with parse error on status-code: " + i);
        return null;
    }

    protected cod b(JsonParser jsonParser) throws IOException {
        return (cod) ((cof) ObjectUtils.a(g.b(jsonParser, JsonTimelineResponse.class))).a(this.a).q();
    }
}
