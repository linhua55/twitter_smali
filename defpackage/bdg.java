package defpackage;

import android.content.Context;
import bdj;
import com.twitter.library.api.al;
import com.twitter.library.network.j;

/* compiled from: Twttr */
/* renamed from: bdg */
public class bdg extends bdf {
    private final Context a;

    public bdg(Context context) {
        this.a = context;
    }

    public void a(al alVar, al alVar2) {
        if (alVar != null) {
            j.a(alVar.i);
            return;
        }
        long b = com.twitter.util.al.b() / 1000;
        long l = bdj.a(this.a).l();
        if (alVar2 == null || l + alVar2.k < b) {
            j.a(null);
        }
    }
}
