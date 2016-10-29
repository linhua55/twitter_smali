package com.twitter.model.av;

/* compiled from: Twttr */
public class k {
    public static DynamicAd a(DynamicAdInfo dynamicAdInfo) {
        return dynamicAdInfo != null ? dynamicAdInfo.a : null;
    }

    public static String b(DynamicAdInfo dynamicAdInfo) {
        return dynamicAdInfo != null ? dynamicAdInfo.b : null;
    }

    public static DynamicAd a(AVMediaPlaylist aVMediaPlaylist) {
        return a(c(aVMediaPlaylist));
    }

    public static String b(AVMediaPlaylist aVMediaPlaylist) {
        return b(c(aVMediaPlaylist));
    }

    private static DynamicAdInfo c(AVMediaPlaylist aVMediaPlaylist) {
        return aVMediaPlaylist != null ? aVMediaPlaylist.i() : null;
    }
}
