package com.twitter.android.dialog;

import android.os.Bundle;
import com.twitter.util.ab;

/* compiled from: Twttr */
public class s extends p {
    protected s(Bundle bundle) {
        super(bundle);
    }

    public static s a(Bundle bundle) {
        return new s(bundle);
    }

    public com.twitter.model.timeline.s a() {
        return (com.twitter.model.timeline.s) ab.a(this.b, "prompt", com.twitter.model.timeline.s.a);
    }
}
