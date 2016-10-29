package com.twitter.android.card;

import com.twitter.library.widget.tweet.content.DisplayMode;

/* compiled from: Twttr */
public class i {
    public static String a(DisplayMode displayMode) {
        return DisplayMode.FORWARD == displayMode ? "platform_forward_card" : "platform_card";
    }
}
