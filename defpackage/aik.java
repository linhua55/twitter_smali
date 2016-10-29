package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.twitter.model.moments.viewmodels.MomentPage;

/* compiled from: Twttr */
/* renamed from: aik */
public class aik implements amw<MomentPage, aig> {
    final LayoutInflater a;
    final ajh b;

    public aik(LayoutInflater layoutInflater, ajh ajh) {
        this.a = layoutInflater;
        this.b = ajh;
    }

    public aig a(ViewGroup viewGroup, MomentPage momentPage) {
        return new aig(ajz.a(this.a, viewGroup), this.b);
    }
}
