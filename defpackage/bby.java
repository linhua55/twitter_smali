package defpackage;

import android.content.Context;
import bbz;
import com.twitter.internal.android.widget.ToolBar;

/* compiled from: Twttr */
/* renamed from: bby */
public class bby {
    private final Context a;

    public bby(Context context) {
        this.a = context;
    }

    public void a(int i, ToolBar toolBar) {
        bbz bbz = new bbz(this.a, i, toolBar);
        bbz.a();
        toolBar.a(bbz.e);
    }
}
