package defpackage;

import android.view.View;
import com.twitter.app.common.inject.m;
import com.twitter.model.moments.viewmodels.MomentPage;
import rx.an;

/* compiled from: Twttr */
/* renamed from: aim */
public class aim implements amu<MomentPage>, m {
    private final ajh a;
    private final akf b;
    private an c;
    private ajj d;

    public aim(akf akf, ajh ajh) {
        this.b = akf;
        this.a = ajh;
    }

    public View aO_() {
        return this.b.aO_();
    }

    public void a(MomentPage momentPage) {
        this.c = this.a.a(momentPage).a().b(new ain(this));
    }

    private void a(ajj ajj) {
        this.d = ajj;
        this.b.a(ajj);
    }

    public void a() {
        an anVar = this.c;
        this.c = null;
        if (anVar != null) {
            anVar.K_();
        }
        this.b.a();
        ajj ajj = this.d;
        if (ajj != null) {
            ajj.b();
        }
        this.d = null;
    }
}
