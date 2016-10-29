package com.twitter.android.people;

import com.twitter.library.util.FriendshipCache;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public enum ModulesPresenterModule_ProvideFriendshipCacheFactory implements c<FriendshipCache> {
    INSTANCE;

    public FriendshipCache a() {
        return (FriendshipCache) d.a(aa.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<FriendshipCache> c() {
        return INSTANCE;
    }
}
