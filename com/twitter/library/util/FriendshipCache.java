package com.twitter.library.util;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import java.io.Serializable;
import java.util.HashMap;

/* compiled from: Twttr */
public class FriendshipCache implements Serializable {
    private static final long serialVersionUID = 7278868434033045713L;
    private final HashMap<Long, Integer> mCache;

    public FriendshipCache() {
        this.mCache = new HashMap();
    }

    public FriendshipCache(int i) {
        this.mCache = new HashMap(i);
    }

    public boolean a() {
        return this.mCache.isEmpty();
    }

    public void b() {
        this.mCache.clear();
    }

    public boolean a(long j) {
        return this.mCache.containsKey(Long.valueOf(j));
    }

    public boolean a(long j, int i) {
        Integer num = (Integer) this.mCache.get(Long.valueOf(j));
        return num != null && num.intValue() == i;
    }

    public void b(long j) {
        d(j, 1);
    }

    public void c(long j) {
        e(j, 1);
    }

    public void d(long j) {
        d(j, 16);
    }

    public void e(long j) {
        e(j, 16);
    }

    public void f(long j) {
        d(j, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
    }

    public void g(long j) {
        e(j, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
    }

    public void h(long j) {
        d(j, 4);
    }

    public void i(long j) {
        e(j, 4);
    }

    public void b(long j, int i) {
        this.mCache.put(Long.valueOf(j), Integer.valueOf(i));
    }

    public Integer j(long j) {
        return (Integer) this.mCache.get(Long.valueOf(j));
    }

    public boolean k(long j) {
        return f(j, 1);
    }

    public boolean l(long j) {
        return f(j, 4);
    }

    public void c(long j, int i) {
        if (!a(j)) {
            b(j, i);
        } else if ((i & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) == 0) {
            int intValue = j(j).intValue();
            if ((i & 1) != 0) {
                intValue |= 1;
            } else {
                intValue &= -2;
            }
            b(j, intValue & -129);
        }
    }

    public void a(Tweet tweet) {
        c(tweet.s, tweet.m);
    }

    public void a(TwitterUser twitterUser) {
        c(twitterUser.c, twitterUser.S);
    }

    private void d(long j, int i) {
        Integer num = (Integer) this.mCache.get(Long.valueOf(j));
        this.mCache.put(Long.valueOf(j), Integer.valueOf(p.a(num == null ? 0 : num.intValue(), i)));
    }

    private void e(long j, int i) {
        Integer num = (Integer) this.mCache.get(Long.valueOf(j));
        this.mCache.put(Long.valueOf(j), Integer.valueOf(p.b(num == null ? 0 : num.intValue(), i)));
    }

    private boolean f(long j, int i) {
        Integer num = (Integer) this.mCache.get(Long.valueOf(j));
        return (num == null || (num.intValue() & i) == 0) ? false : true;
    }
}
