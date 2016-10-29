package com.twitter.android.initialization;

import android.content.Context;
import com.twitter.app.common.util.c;
import com.twitter.config.d;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.ui.widget.ax;
import defpackage.aof;

/* compiled from: Twttr */
public class TypefaceInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        boolean a = d.a("typefaces_android_in_twitter_edit_text_enable");
        if (a) {
            TwitterEditText.setUseCustomFont(a);
        }
        a = d.a("typefaces_android_system_fonts_enabled");
        ax.a(a);
        c.a().a(new q(this, a));
    }
}
