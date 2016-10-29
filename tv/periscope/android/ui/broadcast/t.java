package tv.periscope.android.ui.broadcast;

import android.view.View;
import android.view.View.OnClickListener;
import tv.periscope.android.library.o;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
class t implements OnClickListener {
    final /* synthetic */ ChatComposer a;

    t(ChatComposer chatComposer) {
        this.a = chatComposer;
    }

    public void onClick(View view) {
        switch (y.a[this.a.k.ordinal()]) {
            case p.View_android_focusable /*1*/:
                this.a.a(o.ps__broadcast_too_full_dialog_title, o.ps__broadcast_too_full_dialog_message);
            case p.View_paddingStart /*2*/:
                this.a.a(o.ps__broadcast_limited_dialog_title, o.ps__broadcast_limited_dialog_message);
            case p.View_paddingEnd /*3*/:
                this.a.b();
            case p.View_theme /*4*/:
                if (this.a.g != null && this.a.t != null) {
                    this.a.g.a(this.a.t);
                }
            default:
        }
    }
}
