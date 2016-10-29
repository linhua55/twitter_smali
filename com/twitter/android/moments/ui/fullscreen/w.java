package com.twitter.android.moments.ui.fullscreen;

import android.content.res.Resources;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import bym;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.moments.MomentPageDisplayMode;
import com.twitter.util.d;

/* compiled from: Twttr */
public class w extends co {
    private final ProgressBar c;
    private final MomentPageDisplayMode d;
    private final View e;
    private int f;

    public /* synthetic */ void a(Object obj) {
        b((PageLoadingEvent) obj);
    }

    public w(View view, ProgressBar progressBar, TextView textView, View view2, Resources resources, ProgressBar progressBar2, MomentPageDisplayMode momentPageDisplayMode, String str, bn<String, PageLoadingEvent> bnVar) {
        this(view, progressBar, textView, view2, resources.getInteger(2131755058), resources.getInteger(2131755059), resources.getInteger(2131755057), progressBar2, momentPageDisplayMode, str, bnVar);
    }

    public w(View view, ProgressBar progressBar, TextView textView, View view2, int i, int i2, int i3, ProgressBar progressBar2, MomentPageDisplayMode momentPageDisplayMode, String str, bn<String, PageLoadingEvent> bnVar) {
        super(view, progressBar, textView, i, i2, i3, str, bnVar);
        this.c = progressBar2;
        view2.setClickable(!bym.e());
        this.e = view2;
        this.d = momentPageDisplayMode;
        if (this.d == MomentPageDisplayMode.b) {
            this.f = 0;
            d();
        }
    }

    void a() {
        if (this.d == MomentPageDisplayMode.b && this.f != 3) {
            if (this.f != 0 && e()) {
                d.b(this.c);
            }
            this.f = 1;
        }
    }

    void b() {
        if (this.d == MomentPageDisplayMode.b) {
            f();
            d.a(this.c);
            this.e.setVisibility(8);
            this.b.setVisibility(8);
            this.f = 2;
        }
    }

    void a(PageLoadingEvent pageLoadingEvent) {
        super.a(pageLoadingEvent);
        this.e.setVisibility(0);
        d.a(this.c);
        this.f = 3;
    }

    void c() {
        super.c();
        if (this.f != 2 && this.f != 3) {
            if (this.f == 1) {
                d.b(this.c);
            }
            this.f = 1;
        }
    }

    public void b(PageLoadingEvent pageLoadingEvent) {
        switch (x.a[pageLoadingEvent.b.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                c();
            case Util.TYPE_OTHER /*3*/:
                b();
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                a(pageLoadingEvent);
            default:
                super.b(pageLoadingEvent);
        }
    }
}
