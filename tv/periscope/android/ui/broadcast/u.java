package tv.periscope.android.ui.broadcast;

import android.view.View;
import android.view.View.OnClickListener;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
class u implements OnClickListener {
    final /* synthetic */ ChatComposer a;

    u(ChatComposer chatComposer) {
        this.a = chatComposer;
    }

    public void onClick(View view) {
        switch (y.b[this.a.d.ordinal()]) {
            case p.View_android_focusable /*1*/:
                this.a.c.clearFocus();
            case p.View_paddingStart /*2*/:
                if (this.a.c.length() > 0) {
                    String obj = this.a.c.getText().toString();
                    if (this.a.f != null) {
                        this.a.f.a(obj);
                    }
                    this.a.c.setText("");
                }
            default:
        }
    }
}
