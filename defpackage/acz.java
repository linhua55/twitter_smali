package defpackage;

import android.content.Context;
import aow;
import asy;
import asz;
import com.twitter.android.moments.data.a;
import com.twitter.android.moments.data.bh;
import com.twitter.model.moments.viewmodels.d;
import com.twitter.util.collection.x;
import com.twitter.util.object.g;

/* compiled from: Twttr */
/* renamed from: acz */
final class acz implements g<atf<aow, x<d>>> {
    final /* synthetic */ Context a;

    acz(Context context) {
        this.a = context;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public atf<aow, x<d>> a() {
        return new asy(new bh(new asz(this.a.getContentResolver()), new a()));
    }
}
