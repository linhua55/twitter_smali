package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.cm;
import java.util.Map;
import rx.o;

/* compiled from: Twttr */
/* renamed from: acq */
class acq implements cyw<Map<Long, cm>, o<Map<Long, Tweet>>> {
    final /* synthetic */ acp a;

    acq(acp acp) {
        this.a = acp;
    }

    public o<Map<Long, Tweet>> a(Map<Long, cm> map) {
        return this.a.b.a(map.keySet()).h();
    }
}
