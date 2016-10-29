package com.twitter.android.widget;

import com.twitter.app.common.base.e;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class cz<L extends cz<L>> extends e<L> {
    protected cz(int i) {
        super(i);
    }

    public L a(String str) {
        this.a.putString("NotificationSettingsDialogFragment_account_name", str);
        return (cz) ObjectUtils.a(this);
    }

    public L b(String str) {
        this.a.putString("collapse_key", str);
        return (cz) ObjectUtils.a(this);
    }

    public L c(String str) {
        this.a.putString("event_id", str);
        return (cz) ObjectUtils.a(this);
    }

    public L d(String str) {
        this.a.putString("query", str);
        return (cz) ObjectUtils.a(this);
    }
}
