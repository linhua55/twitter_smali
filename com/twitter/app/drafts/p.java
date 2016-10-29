package com.twitter.app.drafts;

import bbu;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
public class p {
    private final bg a;

    public p(bg bgVar) {
        this.a = bgVar;
    }

    public void a() {
        bbu.a(new TwitterScribeLog(this.a.c().g()).b(new String[]{":drafts:::impression"}));
    }

    public void b() {
        bbu.a(new TwitterScribeLog(this.a.c().g()).b(new String[]{":drafts:composition::impression"}));
    }
}
