package com.twitter.android.moments.ui.guide;

import android.os.Bundle;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.i;

/* compiled from: Twttr */
public class ag extends h {
    public /* synthetic */ i e() {
        return a();
    }

    public /* synthetic */ com.twitter.app.common.base.h f() {
        return a();
    }

    protected ag(Bundle bundle) {
        super(bundle);
    }

    public static ag a(Bundle bundle) {
        return new ag(bundle);
    }

    public ah a() {
        return new ah(this);
    }

    public String b() {
        return this.b.getString("guide_category_id");
    }

    public boolean c() {
        return this.b.getBoolean("show_category_pills");
    }

    public String d() {
        return this.b.getString("home_view_tag");
    }

    public boolean g() {
        return this.b.getInt("guide_type") == 0;
    }
}
