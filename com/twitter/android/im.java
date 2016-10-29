package com.twitter.android;

import cuj;
import java.util.regex.Pattern;

/* compiled from: Twttr */
class im implements cuj<String> {
    final /* synthetic */ Pattern a;
    final /* synthetic */ LogViewerActivity b;

    im(LogViewerActivity logViewerActivity, Pattern pattern) {
        this.b = logViewerActivity;
        this.a = pattern;
    }

    public boolean a(String str) {
        return str != null && this.a.matcher(str).find();
    }
}
