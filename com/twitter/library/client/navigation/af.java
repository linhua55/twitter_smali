package com.twitter.library.client.navigation;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.MenuRes;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.UserSettings;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.manager.l;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.b;
import com.twitter.media.request.c;
import com.twitter.media.request.i;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import defpackage.bby;
import defpackage.bca;
import defpackage.bcx;
import java.util.concurrent.Future;

/* compiled from: Twttr */
public class af implements w, c {
    final ToolBar a;
    final Activity b;
    Future<?> c;
    TwitterUser d;
    private final bby e;
    private bca f;
    private Drawable g;

    public af(ToolBar toolBar, int i, Activity activity) {
        this.b = activity;
        this.a = toolBar;
        this.a.setDisplayOptions(i);
        this.e = new bby(this.b);
    }

    public void a(@MenuRes int i) {
        this.e.a(i, this.a);
    }

    public void f() {
        this.a.invalidate();
    }

    public void g() {
        this.a.requestLayout();
    }

    public void c(int i) {
        this.a.setVisibility(i);
    }

    public void a(x xVar) {
        this.a.setOnToolBarItemSelectedListener(xVar);
    }

    public boolean c() {
        return this.a.f();
    }

    public boolean d() {
        return this.a.g();
    }

    public boolean e() {
        return this.a.h();
    }

    public CharSequence h() {
        return this.a.getTitle();
    }

    public CharSequence i() {
        return this.a.getSubtitle();
    }

    public void a(CharSequence charSequence) {
        this.a.setTitle(charSequence);
    }

    public void a(CharSequence charSequence, boolean z) {
        this.a.a(charSequence, z);
    }

    public void b(CharSequence charSequence) {
        this.a.setSubtitle(charSequence);
    }

    public void b(CharSequence charSequence, boolean z) {
        this.a.b(charSequence, z);
    }

    public void a(TwitterUser twitterUser, UserSettings userSettings) {
        if (!ObjectUtils.a(this.d, (Object) twitterUser)) {
            this.d = twitterUser;
            if (this.f == null) {
                this.f = this.a.a(bcx.my_profile);
            }
            if (this.f != null) {
                if (this.g == null) {
                    this.g = this.f.p();
                }
                this.f.a(this.g);
                if (twitterUser != null) {
                    if (aj.a(twitterUser.d)) {
                        this.f.a("@" + twitterUser.k);
                    } else {
                        this.f.a(twitterUser.d);
                        this.f.c("@" + twitterUser.k);
                    }
                    a(twitterUser);
                } else if (this.c != null) {
                    this.c.cancel(false);
                    this.c = null;
                }
            }
        }
    }

    void a(TwitterUser twitterUser) {
        if (this.c != null) {
            this.c.cancel(false);
        }
        this.c = l.a(this.b).a((b) UserImageRequest.a(twitterUser.e, -1).a((i) this));
    }

    public ac b(int i) {
        return this.a.a(i);
    }

    public ToolBar j() {
        return this.a;
    }

    public void a(ImageResponse imageResponse) {
        if (this.f != null) {
            Bitmap bitmap = (Bitmap) imageResponse.f();
            this.f.a(bitmap != null ? new BitmapDrawable(this.b.getResources(), bitmap) : this.g);
        }
    }
}
