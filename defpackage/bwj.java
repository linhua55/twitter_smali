package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import bwg;
import bwk;
import com.twitter.library.platform.c;

/* compiled from: Twttr */
/* renamed from: bwj */
public class bwj {
    public static bwh a(Context context, ViewGroup viewGroup) {
        if (c.b(context)) {
            return new bwk(viewGroup, bwk.a(context), new ImageView(context));
        }
        return new bwg(viewGroup);
    }
}
