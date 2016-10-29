package defpackage;

import com.twitter.app.common.inject.d;
import com.twitter.model.av.MonetizationCategory;
import java.util.Set;
import rx.o;
import uq;

/* compiled from: Twttr */
/* renamed from: ur */
public class ur extends d {
    private final Set<Integer> a;

    public ur(Set<Integer> set) {
        this.a = set;
    }

    Set<Integer> a() {
        return this.a;
    }

    static o<cgu<MonetizationCategory>> a(uq uqVar) {
        return uqVar.a();
    }
}
