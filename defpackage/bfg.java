package defpackage;

import com.fasterxml.jackson.core.JsonParser;
import com.twitter.library.api.at;
import com.twitter.library.api.t;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.model.json.common.g;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bfg */
public class bfg extends t<bff, cd> {
    private final TwitterUser a;

    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    public bfg(TwitterUser twitterUser) {
        this.a = twitterUser;
    }

    protected cd b(JsonParser jsonParser, int i) throws IOException {
        return (cd) g.c(jsonParser, cd.class);
    }

    protected bff b(JsonParser jsonParser) throws IOException {
        return at.e(jsonParser, this.a);
    }
}
