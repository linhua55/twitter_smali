package defpackage;

import android.view.View;
import com.twitter.util.y;

/* compiled from: Twttr */
/* renamed from: aqj */
public class aqj extends y<Boolean> {
    private boolean a;

    public aqj(View view, int i) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new aqk(this, view, i));
    }

    public boolean a() {
        return this.a;
    }
}
