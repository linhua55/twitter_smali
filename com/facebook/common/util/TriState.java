package com.facebook.common.util;

/* compiled from: Twttr */
public enum TriState {
    YES,
    NO,
    UNSET;

    public static TriState a(boolean z) {
        return z ? YES : NO;
    }
}
