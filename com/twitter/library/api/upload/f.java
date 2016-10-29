package com.twitter.library.api.upload;

import com.twitter.media.model.MediaType;

/* compiled from: Twttr */
/* synthetic */ class f {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;

    static {
        b = new int[MediaType.values().length];
        try {
            b[MediaType.b.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[MediaType.f.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            b[MediaType.c.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            b[MediaType.d.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        a = new int[MediaUsage.values().length];
        try {
            a[MediaUsage.AVATAR.ordinal()] = 1;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[MediaUsage.HEADER.ordinal()] = 2;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[MediaUsage.TWEET.ordinal()] = 3;
        } catch (NoSuchFieldError e7) {
        }
        try {
            a[MediaUsage.DM.ordinal()] = 4;
        } catch (NoSuchFieldError e8) {
        }
    }
}
