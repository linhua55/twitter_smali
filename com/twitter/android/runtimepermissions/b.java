package com.twitter.android.runtimepermissions;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.annotation.StyleRes;

/* compiled from: Twttr */
public class b {
    private final Context a;
    private final String[] b;
    private final String c;
    private String d;
    private String e;
    private String f;
    private boolean g;
    @StyleRes
    private int h;
    @StyleRes
    private int i;
    private String j;
    private String k;
    private String l;
    private boolean m;

    public b(String str, Context context, String... strArr) {
        this.a = context;
        this.b = strArr;
        this.c = str;
        Resources resources = this.a.getResources();
        c(resources.getString(2131363256));
        a(resources.getString(2131362312));
        b(resources.getString(2131363169));
        d(resources.getString(2131363255));
        a(2131558781);
        b(2131558781);
    }

    public Intent a() {
        Intent putExtra = new Intent(this.a, PermissionRequestActivity.class).putExtra("extra_permissions", this.b).putExtra("extra_prelim_title", this.c);
        putExtra.putExtra("extra_prelim_pos_text", this.e);
        putExtra.putExtra("extra_prelim_neg_text", this.f);
        putExtra.putExtra("extra_always_prelim", this.g);
        putExtra.putExtra("extra_prelim_dialog_theme", this.h);
        putExtra.putExtra("extra_retarget_dialog_theme", this.i);
        putExtra.putExtra("extra_retarget_title", this.d);
        putExtra.putExtra("extra_prelim_msg", this.j);
        putExtra.putExtra("extra_retarget_msg_fmt", this.k);
        putExtra.putExtra("extra_event_prefix", this.l);
        putExtra.putExtra("extra_use_snackbar", this.m);
        return putExtra;
    }

    public b a(String str) {
        this.e = str;
        return this;
    }

    public b b(String str) {
        this.f = str;
        return this;
    }

    public b a(@StyleRes int i) {
        this.h = i;
        return this;
    }

    public b b(@StyleRes int i) {
        this.i = i;
        return this;
    }

    public b c(String str) {
        this.d = str;
        return this;
    }

    public b d(String str) {
        this.k = str;
        return this;
    }

    public b e(String str) {
        this.j = str;
        return this;
    }

    public b f(String str) {
        this.l = str;
        return this;
    }

    public b a(boolean z) {
        this.m = z;
        return this;
    }
}
