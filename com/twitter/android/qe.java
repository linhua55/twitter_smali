package com.twitter.android;

import android.os.Bundle;
import com.twitter.android.dialog.p;
import com.twitter.model.core.as;
import com.twitter.util.ab;

/* compiled from: Twttr */
public class qe extends p {
    protected qe(Bundle bundle) {
        super(bundle);
    }

    public static qe a(Bundle bundle) {
        return new qe(bundle);
    }

    public as a() {
        return (as) ab.a(this.b, "quoted_tweet", as.a);
    }
}
