package com.twitter.util.serialization;

import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class o {
    public static String c(byte b) {
        switch (b) {
            case p.View_android_focusable /*1*/:
                return "byte";
            case p.View_paddingStart /*2*/:
                return "int";
            case p.View_paddingEnd /*3*/:
                return "long";
            case p.View_theme /*4*/:
                return "float";
            case p.Toolbar_contentInsetStart /*5*/:
                return "double";
            case p.Toolbar_contentInsetEnd /*6*/:
                return "boolean";
            case p.Toolbar_contentInsetLeft /*7*/:
                return "null";
            case p.Toolbar_contentInsetRight /*8*/:
            case p.Toolbar_titleMarginStart /*13*/:
                return "string";
            case p.Toolbar_popupTheme /*9*/:
            case p.Toolbar_titleTextAppearance /*10*/:
                return "start_object";
            case p.Toolbar_subtitleTextAppearance /*11*/:
                return "end_object";
            case p.Toolbar_titleMargins /*12*/:
                return "eof";
            case p.Toolbar_titleMarginEnd /*14*/:
                return "byte_array";
            default:
                return "unknown (" + b + ")";
        }
    }
}
