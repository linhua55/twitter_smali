package com.twitter.android.av.audio;

import caw;
import cgl;
import cmb;
import cmc;
import com.twitter.model.av.Audio;
import com.twitter.model.core.Tweet;
import com.twitter.util.object.e;
import defpackage.byy;

/* compiled from: Twttr */
public class l {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;

    public static l a(Audio audio) {
        return new m().a(audio.o()).b(audio.p()).d(audio.m()).e(audio.l()).c(audio.k()).a();
    }

    public static l a(Tweet tweet) {
        String str;
        String b;
        cgl aa = tweet.aa();
        cmb N = aa != null ? aa.N() : null;
        e.a(N);
        byy a = byy.a("app_url", "app_url_resolved", N);
        cmc a2 = cmc.a("player_image", N);
        String a3 = caw.a("artist_name", N);
        if (a2 != null) {
            str = a2.a;
        } else {
            str = null;
        }
        String a4 = caw.a("title", N);
        if (a != null) {
            b = a.b();
        } else {
            b = null;
        }
        return new m().a(a3).b(str).d(null).e(b).c(a4).a();
    }

    public l(m mVar) {
        this.a = mVar.a;
        this.b = mVar.b;
        this.c = mVar.c;
        this.d = mVar.d;
        this.e = mVar.e;
    }

    String a() {
        return this.b;
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }
}
