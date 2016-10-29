package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.TextView;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.util.q;
import com.twitter.library.view.d;
import com.twitter.library.view.m;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.model.core.cr;
import com.twitter.model.moments.u;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.ui.view.p;
import com.twitter.util.aj;
import com.twitter.util.collection.MutableList;
import com.twitter.util.object.b;
import com.twitter.util.object.e;
import cto;
import java.util.List;

/* compiled from: Twttr */
public class ek {
    private final Context a;
    private final b<Tweet, m> b;
    @ColorInt
    private final int c;
    @ColorInt
    private final int d;

    public static ek a(Context context) {
        return a(context, new el());
    }

    public static ek a(Context context, b<Tweet, m> bVar) {
        return new ek(context, bVar, 2131886293, 2131886294);
    }

    public ek(Context context, b<Tweet, m> bVar, @ColorRes int i, @ColorRes int i2) {
        this.a = context;
        this.b = bVar;
        this.c = context.getResources().getColor(i);
        this.d = context.getResources().getColor(i2);
    }

    public CharSequence a(o oVar, TextView textView) {
        CharSequence d;
        Tweet tweet = (Tweet) e.a(oVar.n());
        u o = oVar.o();
        bi d2 = new bi(tweet.w).d();
        String f = tweet.f();
        List a = MutableList.a();
        Object obj;
        if (o == null || !tweet.w.a()) {
            obj = f;
        } else {
            int length = f.length();
            int i = length;
            for (cr crVar : cto.a(new Iterable[]{tweet.w.b(), tweet.Y()})) {
                if (o.a(crVar.f)) {
                    a.add(crVar);
                    if (crVar instanceof MediaEntity) {
                        d2.a((MediaEntity) crVar);
                    } else {
                        d2.b(crVar);
                    }
                    length = Math.min(i, crVar.g);
                } else {
                    length = i;
                }
                i = length;
            }
            String d3 = aj.d(f.substring(0, i));
            if (a(oVar) && d3.endsWith(":")) {
                d = aj.d(d3.substring(0, d3.length() - 1));
            } else {
                obj = d3;
            }
        }
        m mVar = (m) this.b.a(tweet);
        bg bgVar = (bg) d2.q();
        textView.setTag(mVar);
        SpannableStringBuilder a2 = com.twitter.library.view.o.a(d).a(bgVar).a(mVar).a(this.c).b(this.d).c(true).a();
        p.a(textView);
        return q.a(this.a).a((View) textView, d.a(this.a, bgVar.f, a2, true), textView.getPaint().getFontMetrics());
    }

    private static boolean a(o oVar) {
        switch (em.a[oVar.d().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
                if (oVar.k() == null) {
                    return true;
                }
                return false;
            default:
                return false;
        }
    }
}
