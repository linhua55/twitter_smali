package com.twitter.android.dialog;

import android.widget.ImageView.ScaleType;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class q<L extends q<L>> extends m<L> {
    protected q(int i) {
        super(i);
    }

    public L a(String str) {
        this.a.putString("icon_url", str);
        return (q) ObjectUtils.a((Object) this);
    }

    public L a(ScaleType scaleType) {
        this.a.putInt("icon_scale_type", scaleType.ordinal());
        return (q) ObjectUtils.a((Object) this);
    }
}
