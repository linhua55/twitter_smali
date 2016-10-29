package defpackage;

import com.twitter.model.moments.viewmodels.d;
import com.twitter.util.collection.ao;
import rx.o;

/* compiled from: Twttr */
/* renamed from: adb */
class adb implements cyw<Boolean, o<ao<d, com.twitter.model.moments.d>>> {
    final /* synthetic */ long a;
    final /* synthetic */ acy b;

    adb(acy acy, long j) {
        this.b = acy;
        this.a = j;
    }

    public o<ao<d, com.twitter.model.moments.d>> a(Boolean bool) {
        return this.b.a(bool.booleanValue()).a_(Long.valueOf(this.a));
    }
}
