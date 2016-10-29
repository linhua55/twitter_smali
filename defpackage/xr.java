package defpackage;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.DMConversationFragment;

/* compiled from: Twttr */
/* renamed from: xr */
class xr implements OnClickListener {
    final /* synthetic */ xq a;

    xr(xq xqVar) {
        this.a = xqVar;
    }

    public void onClick(View view) {
        DMConversationFragment.a(this.a.f, this.a.l);
    }
}
