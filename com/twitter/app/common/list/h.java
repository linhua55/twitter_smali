package com.twitter.app.common.list;

import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.StringRes;
import com.twitter.app.common.base.g;

/* compiled from: Twttr */
public class h extends g {
    public static h c;

    public /* synthetic */ com.twitter.app.common.base.h f() {
        return e();
    }

    static {
        c = new h(Bundle.EMPTY);
    }

    protected h(Bundle bundle) {
        super(bundle);
    }

    public static h d(Bundle bundle) {
        return new h(bundle);
    }

    public i e() {
        return new j(this);
    }

    public boolean r() {
        return this.b.getBoolean("is_refreshable", true);
    }

    public long a(long j) {
        return this.b.getLong("owner_id", j);
    }

    public int s() {
        return this.b.getInt("list_choice_mode", 0);
    }

    @StringRes
    public int t() {
        return this.b.getInt("empty_title_res_id", 0);
    }

    @StringRes
    public int u() {
        return this.b.getInt("empty_description_res_id", 0);
    }

    @IdRes
    public int v() {
        return this.b.getInt("list_inflated_id", -1);
    }

    public int w() {
        return this.b.getInt("shim_height", 0);
    }

    public int x() {
        return this.b.getInt("list_bottom_extra_padding", 0);
    }

    public boolean y() {
        return this.b.getBoolean("is_horizontal_padding_enabled", true);
    }
}
