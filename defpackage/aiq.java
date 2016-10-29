package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.twitter.model.moments.viewmodels.MomentPage;

/* compiled from: Twttr */
/* renamed from: aiq */
public class aiq implements amw<MomentPage, aim> {
    final LayoutInflater a;
    final ajh b;

    public aiq(LayoutInflater layoutInflater, ajh ajh) {
        this.a = layoutInflater;
        this.b = ajh;
    }

    public aim a(ViewGroup viewGroup, MomentPage momentPage) {
        return new aim(akf.a(this.a, viewGroup), this.b);
    }
}
