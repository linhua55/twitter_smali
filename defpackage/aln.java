package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.bf;
import com.twitter.model.core.cm;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: aln */
final class aln implements ctc<cm, Tweet> {
    aln() {
    }

    public Tweet a(cm cmVar) {
        e.a((Object) cmVar);
        return new bf().g(cmVar.bf_()).a();
    }
}
