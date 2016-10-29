package defpackage;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.twitter.util.j;
import com.twitter.util.object.ObjectUtils;
import cyx;

/* compiled from: Twttr */
/* renamed from: aja */
class aja implements cyx<View, View, View> {
    final /* synthetic */ aiy a;

    aja(aiy aiy) {
        this.a = aiy;
    }

    public View a(View view, View view2) {
        j.b(view instanceof FrameLayout);
        FrameLayout frameLayout = (FrameLayout) ObjectUtils.a((Object) view);
        frameLayout.addView(view2, new LayoutParams(-1, -1));
        return frameLayout;
    }
}
