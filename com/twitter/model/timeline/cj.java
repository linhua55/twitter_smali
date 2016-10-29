package com.twitter.model.timeline;

import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class cj {
    public static int a(int i) {
        switch (i) {
            case p.View_android_theme /*0*/:
                return 0;
            case p.View_android_focusable /*1*/:
                return 1;
            case p.View_paddingStart /*2*/:
                return 17;
            case p.View_paddingEnd /*3*/:
                return 30;
            case p.View_theme /*4*/:
                return 8;
            case p.Toolbar_contentInsetStart /*5*/:
                return 27;
            case p.Toolbar_contentInsetEnd /*6*/:
                return 28;
            case p.Toolbar_contentInsetLeft /*7*/:
                return 35;
            case p.Toolbar_contentInsetRight /*8*/:
                return 2;
            case p.Toolbar_popupTheme /*9*/:
                return 5;
            case p.Toolbar_titleTextAppearance /*10*/:
                return 23;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                return 25;
            case p.Toolbar_titleMargins /*12*/:
                return 24;
            case p.Toolbar_titleMarginStart /*13*/:
                return 3;
            case p.Toolbar_titleMarginEnd /*14*/:
                return 37;
            default:
                throw new IllegalArgumentException(String.format("Timeline type %d has no matching TweetGroupType value", new Object[]{Integer.valueOf(i)}));
        }
    }

    public static int b(int i) {
        switch (i) {
            case p.View_android_theme /*0*/:
                return 4;
            case p.View_android_focusable /*1*/:
                return 15;
            case p.View_paddingStart /*2*/:
            case p.Toolbar_contentInsetRight /*8*/:
            case p.Toolbar_popupTheme /*9*/:
            case p.Toolbar_titleTextAppearance /*10*/:
            case p.Toolbar_subtitleTextAppearance /*11*/:
            case p.Toolbar_titleMargins /*12*/:
            case p.Toolbar_titleMarginStart /*13*/:
                return 3;
            default:
                return -1;
        }
    }
}
