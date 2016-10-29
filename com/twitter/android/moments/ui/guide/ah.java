package com.twitter.android.moments.ui.guide;

import com.twitter.app.common.base.g;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.i;

/* compiled from: Twttr */
public class ah extends i<ah> {
    public /* synthetic */ h b() {
        return a();
    }

    public /* synthetic */ g c() {
        return a();
    }

    public ah(ag agVar) {
        super((h) agVar);
    }

    public ah a(String str, String str2) {
        this.a.putString("guide_category_id", str);
        this.a.putString("guide_category_name", str2);
        this.a.putInt("guide_type", 1);
        return this;
    }

    public ah a(boolean z) {
        this.a.putBoolean("show_category_pills", z);
        return this;
    }

    public ag a() {
        return new ag(this.a);
    }
}
