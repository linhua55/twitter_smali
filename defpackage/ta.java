package defpackage;

import android.widget.Toast;
import com.twitter.library.api.search.f;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.collection.n;

/* compiled from: Twttr */
/* renamed from: ta */
class ta extends z {
    final /* synthetic */ sz a;

    ta(sz szVar) {
        this.a = szVar;
    }

    public void a(x xVar) {
        if (((aa) xVar.l().b()).b()) {
            f fVar = (f) xVar;
            com.twitter.android.trends.f.a(this.a.a, this.a.b, fVar);
            this.a.c.a(fVar.e());
            return;
        }
        this.a.c.a(n.g());
        Toast.makeText(this.a.a, 2131363964, 1).show();
    }
}
