package com.twitter.android.widget;

import android.content.Intent;
import android.os.Bundle;

/* compiled from: Twttr */
public class db extends ee {
    protected db(Bundle bundle) {
        super(bundle);
    }

    public static db a(Bundle bundle) {
        return new db(bundle);
    }

    public Intent a() {
        return (Intent) this.b.getParcelable("retweet_service_intent");
    }
}
