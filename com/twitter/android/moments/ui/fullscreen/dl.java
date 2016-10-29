package com.twitter.android.moments.ui.fullscreen;

import android.content.res.Resources;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.ax;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.model.moments.viewmodels.y;
import com.twitter.util.object.e;
import defpackage.bcu;

/* compiled from: Twttr */
public class dl {
    public static ax a(Resources resources, y yVar) {
        return (ax) e.b(yVar.p(), new ax(resources.getColor(bcu.white), resources.getColor(2131886297)));
    }

    public static Tweet a(MomentPage momentPage) {
        return momentPage instanceof o ? ((o) momentPage).n() : null;
    }
}
