package com.twitter.android.moments.viewmodels;

/* compiled from: Twttr */
public class MomentGuideListItem {
    public static final int b;
    private final Type a;

    /* compiled from: Twttr */
    public enum Type {
        HERO,
        HERO_WITH_CATEGORY_PILLS,
        CATEGORY_PILLS,
        LIST_ITEM,
        HEADER,
        PIVOT,
        DIVIDER
    }

    static {
        b = Type.values().length;
    }

    public MomentGuideListItem(Type type) {
        this.a = type;
    }

    public Type b() {
        return this.a;
    }
}
