package defpackage;

import android.support.v7.graphics.Palette;
import com.twitter.util.ui.h;

/* compiled from: Twttr */
/* renamed from: agu */
class agu implements cyw<Palette, Integer> {
    final /* synthetic */ int a;
    final /* synthetic */ agt b;

    agu(agt agt, int i) {
        this.b = agt;
        this.a = i;
    }

    public Integer a(Palette palette) {
        return Integer.valueOf(h.a(palette.getDarkMutedColor(this.a), 0.175f));
    }
}
