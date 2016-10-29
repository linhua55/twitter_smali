package com.twitter.android.av;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import bsa;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import defpackage.bcu;

/* compiled from: Twttr */
public class LoaderOnlyChromeView extends RelativeLayout implements h {
    protected bsa a;
    private boolean b;

    public LoaderOnlyChromeView(Context context) {
        this(context, null);
    }

    public LoaderOnlyChromeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new bsa();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.a.a(z, i, i2, i3, i4);
    }

    public View getView() {
        return this;
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
    }

    public void a(AVMedia aVMedia) {
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        n();
    }

    public void a() {
    }

    public void b() {
    }

    public void c() {
        k();
    }

    public void d() {
        m();
    }

    public void e() {
    }

    public void a_(boolean z) {
        m();
        o();
    }

    public boolean f() {
        return false;
    }

    public void h() {
    }

    public void g() {
    }

    public void i() {
        n();
    }

    public void j() {
    }

    public void l() {
    }

    public void b_(boolean z) {
    }

    public void a(Context context, String str) {
        n();
    }

    public void a(bd bdVar) {
        if (this.b) {
            this.b = false;
            n();
        }
    }

    public void k() {
        this.a.a(this, getContext());
    }

    public void m() {
        this.a.a(this);
    }

    protected void n() {
        m();
        setBackgroundColor(0);
    }

    protected void o() {
        this.b = true;
        setBackgroundColor(getContext().getResources().getColor(bcu.deep_transparent_black));
    }
}
