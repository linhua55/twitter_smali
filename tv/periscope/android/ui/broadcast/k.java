package tv.periscope.android.ui.broadcast;

import android.os.Looper;
import android.os.Message;
import defpackage.dcw;
import tv.periscope.android.library.p;
import tv.periscope.android.player.a;

/* compiled from: Twttr */
class k extends dcw<a> {
    k(a aVar) {
        super(aVar, Looper.getMainLooper());
    }

    public void a(Message message, a aVar) {
        switch (message.what) {
            case p.View_android_focusable /*1*/:
                aVar.d();
            case p.View_paddingStart /*2*/:
                aVar.e();
            case p.View_paddingEnd /*3*/:
                aVar.f();
            case p.View_theme /*4*/:
                aVar.g();
            case p.Toolbar_contentInsetStart /*5*/:
                aVar.b(((Boolean) message.obj).booleanValue());
            case p.Toolbar_contentInsetEnd /*6*/:
                aVar.h();
            case p.Toolbar_contentInsetLeft /*7*/:
                aVar.a((Exception) message.obj);
            case p.Toolbar_contentInsetRight /*8*/:
                aVar.b(((Long) message.obj).longValue());
            case p.Toolbar_popupTheme /*9*/:
                aVar.i();
            default:
        }
    }
}
