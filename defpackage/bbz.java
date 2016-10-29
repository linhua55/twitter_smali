package defpackage;

import android.content.Context;
import bca;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.util.collection.MutableList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bbz */
class bbz extends bbx {
    final ToolBar d;
    final List<bca> e;

    bbz(Context context, int i, ToolBar toolBar) {
        super(context, i);
        this.e = MutableList.a();
        this.d = toolBar;
    }

    protected void b() {
        bca bca = new bca(this.d, this.b, this.c);
        if (bca.a() != 0) {
            this.e.add(bca);
        }
    }
}
