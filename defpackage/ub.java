package defpackage;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;

/* compiled from: Twttr */
/* renamed from: ub */
class ub extends ab {
    final /* synthetic */ ua a;

    ub(ua uaVar) {
        this.a = uaVar;
    }

    public void a(View view, MotionEvent motionEvent) {
        this.a.v.a(this.a.l, this.a.f, this.a.m, NativeCardUserAction.a(this.a.e(), view, motionEvent, 0));
    }
}
