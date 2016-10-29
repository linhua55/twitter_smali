package com.twitter.library.client.navigation;

import android.support.annotation.MenuRes;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.UserSettings;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public interface w {
    void a(@MenuRes int i);

    void a(x xVar);

    void a(TwitterUser twitterUser, UserSettings userSettings);

    void a(CharSequence charSequence);

    void a(CharSequence charSequence, boolean z);

    ac b(int i);

    void b(CharSequence charSequence);

    void b(CharSequence charSequence, boolean z);

    void c(int i);

    boolean c();

    boolean d();

    boolean e();

    void f();

    void g();

    CharSequence h();

    CharSequence i();

    ToolBar j();
}
