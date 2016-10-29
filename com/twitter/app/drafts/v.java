package com.twitter.app.drafts;

import android.support.annotation.StringRes;
import com.twitter.app.common.list.t;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class v extends t<v> {
    private String a;
    private boolean b;

    public String n() {
        return this.a;
    }

    public v b(String str) {
        this.a = str;
        return (v) ObjectUtils.a(this);
    }

    @StringRes
    public boolean o() {
        return this.b;
    }

    public v c(boolean z) {
        this.b = z;
        return (v) ObjectUtils.a(this);
    }
}
