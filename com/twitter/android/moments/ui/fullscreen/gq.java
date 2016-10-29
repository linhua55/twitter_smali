package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;
import com.twitter.moments.core.ui.widget.sectionpager.a;

/* compiled from: Twttr */
public class gq implements a {
    private final View a;

    public gq(Context context, bn<String, PageLoadingEvent> bnVar, String str) {
        this.a = LayoutInflater.from(context).inflate(2130969013, null, false);
        bnVar.a(str, PageLoadingEventType.DONE_FAILED.a());
    }

    public View a() {
        return this.a;
    }

    public void b() {
    }

    public void c() {
    }

    public void d() {
    }

    public void a(float f) {
    }
}
