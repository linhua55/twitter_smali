package com.twitter.android.card;

import android.content.Context;
import android.content.Intent;
import byy;
import com.twitter.config.d;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class CardActionHelper {
    private final Context a;
    private final a b;
    private final f c;
    private final String d;

    public CardActionHelper(Context context, a aVar, f fVar, String str) {
        this.a = context;
        this.b = aVar;
        this.c = fVar;
        this.d = str;
    }

    public AppStatus a(String str) {
        if (aj.a((CharSequence) str)) {
            return AppStatus.a;
        }
        if (this.b.d(str)) {
            return AppStatus.b;
        }
        return AppStatus.c;
    }

    public void a(byy byy, String str, String str2, NativeCardUserAction nativeCardUserAction) {
        a(byy.c() ? byy.b() : byy.a(), str, str2, nativeCardUserAction);
    }

    public void a(String str, String str2, String str3, NativeCardUserAction nativeCardUserAction) {
        switch (e.a[a(str2).ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                this.c.c("open_app", this.d, nativeCardUserAction);
                this.c.a(PromotedEvent.CARD_OPEN_APP, nativeCardUserAction);
                this.b.b(str, str2);
            case WireMessage.WIRE_CONTROL /*2*/:
                this.c.c("install_app", this.d, nativeCardUserAction);
                this.c.a(PromotedEvent.CARD_INSTALL_APP, nativeCardUserAction);
                if (this.b.b(str2)) {
                    this.c.c("open_link", this.d, nativeCardUserAction);
                }
                if (d.a("post_installed_logging_enabled")) {
                    this.c.d(str2, this.d);
                }
            default:
                a(str3, nativeCardUserAction);
        }
    }

    public void b(String str) {
        a(str, null);
    }

    public void a(String str, NativeCardUserAction nativeCardUserAction) {
        if (!aj.a((CharSequence) str)) {
            this.c.c("open_link", this.d, nativeCardUserAction);
            this.c.a(PromotedEvent.CARD_URL_CLICK, nativeCardUserAction);
            Tweet b = this.c.b();
            if (b == null) {
                return;
            }
            if (b.ac()) {
                Session c = bg.a().c();
                if (c != null) {
                    this.c.b(str);
                    this.b.a(c, b, str);
                    return;
                }
                return;
            }
            this.b.a(str, b);
        }
    }

    public void a(Tweet tweet, NativeCardUserAction nativeCardUserAction) {
        this.c.c("show", this.d, nativeCardUserAction);
        this.c.a(PromotedEvent.VIEW_DETAILS, nativeCardUserAction);
        this.b.a(tweet, this.c.a());
    }

    public void a(Intent intent) {
        this.c.c("card_click", this.d, null);
        this.b.a(intent);
    }
}
