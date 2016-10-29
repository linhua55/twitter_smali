package defpackage;

import android.view.LayoutInflater;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: ajp */
final class ajp implements b<MomentPage, afw> {
    final /* synthetic */ LayoutInflater a;

    ajp(LayoutInflater layoutInflater) {
        this.a = layoutInflater;
    }

    public afw a(MomentPage momentPage) {
        return afw.a(this.a, momentPage);
    }
}
