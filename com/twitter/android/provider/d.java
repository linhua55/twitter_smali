package com.twitter.android.provider;

import biw;
import com.twitter.model.core.TwitterUser;
import cuj;

/* compiled from: Twttr */
final class d implements cuj<Object> {
    d() {
    }

    public boolean a(Object obj) {
        if (!(obj instanceof TwitterUser) || biw.a((TwitterUser) obj)) {
            return true;
        }
        return false;
    }
}
