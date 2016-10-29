package defpackage;

import android.view.View;
import com.twitter.app.common.inject.m;
import com.twitter.model.moments.viewmodels.MomentPage;
import rx.an;

/* compiled from: Twttr */
/* renamed from: aig */
public class aig implements amu<MomentPage>, m {
    private final ajz a;
    private final ajh b;
    private an c;
    private ajj d;

    public aig(ajz ajz, ajh ajh) {
        this.a = ajz;
        this.b = ajh;
    }

    public View aO_() {
        return this.a.aO_();
    }

    public void a(MomentPage momentPage) {
        this.c = this.b.a(momentPage).a().b(new aih(this));
    }

    private void a(ajj ajj) {
        this.d = ajj;
        this.a.a(ajj);
    }

    public void a() {
        an anVar = this.c;
        this.c = null;
        if (anVar != null) {
            anVar.K_();
        }
        this.a.a();
        ajj ajj = this.d;
        if (ajj != null) {
            ajj.b();
        }
        this.d = null;
    }
}
