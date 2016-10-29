package com.twitter.android.av;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.twitter.config.AppConfig;
import com.twitter.library.av.aa;
import com.twitter.library.av.control.a;
import com.twitter.library.av.playback.AVPlayer.PlayerStartType;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.bd;
import com.twitter.library.av.s;
import com.twitter.model.av.Partner;
import com.twitter.model.av.c;
import defpackage.bcx;
import defpackage.bqk;
import java.util.Arrays;

/* compiled from: Twttr */
public abstract class AVBaseCardCanvasView<TButtonView extends View> extends LinearLayout implements i {
    protected final View a;
    protected final TButtonView b;
    protected final ProgressBar c;
    protected final ImageView d;
    protected AVPlayerAttachment e;
    private a f;
    private boolean h;
    private final Iterable<View> i;

    protected abstract int getLayoutId();

    public AVBaseCardCanvasView(Context context) {
        this(context, null, 0);
    }

    public AVBaseCardCanvasView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AVBaseCardCanvasView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOrientation(1);
        View.inflate(context, getLayoutId(), this);
        a(context);
        this.b = findViewById(2131951973);
        this.a = findViewById(2131951972);
        this.c = (ProgressBar) findViewById(2131951979);
        this.d = (ImageView) findViewById(bcx.pause);
        this.d.requestFocus();
        this.d.setOnClickListener(this);
        this.i = Arrays.asList(new View[]{this.b, this.a});
    }

    protected void a(Context context) {
    }

    public void a(AVPlayerAttachment aVPlayerAttachment, Configuration configuration) {
        this.e = aVPlayerAttachment;
        a();
        this.f = new a(this, this.e.a(), this);
        aVPlayerAttachment.a((s) this);
        aVPlayerAttachment.i();
        g();
        bqk a = a(configuration);
        if (AppConfig.m().a() && a != aVPlayerAttachment.b()) {
            throw new IllegalStateException("Attachment playback mode does not match the expected mode: " + aVPlayerAttachment.b() + " vs " + a);
        }
    }

    protected bqk a(Configuration configuration) {
        return bqk.c;
    }

    public void setPartner(Partner partner) {
    }

    protected void a() {
        this.c.setVisibility(0);
        this.d.setVisibility(4);
    }

    protected void b() {
        this.c.setVisibility(8);
        this.d.setVisibility(0);
    }

    public void c() {
    }

    public void d() {
    }

    public void a(boolean z, long j) {
        if (z && this.h) {
            this.e.a(false);
            this.h = false;
        }
        o();
    }

    public void a(int i, int i2) {
    }

    public void a(int i, int i2, boolean z, boolean z2) {
        b();
        o();
        if (this.f != null && this.e.a().y()) {
            this.f.b(this.e.a().z());
        }
    }

    public void e() {
        a();
        o();
    }

    public void f() {
        this.h = true;
        o();
        setKeepScreenOn(false);
        b();
    }

    public void a(int i, String str) {
        b();
    }

    public void a(c cVar) {
        b();
    }

    public void a(PlayerStartType playerStartType) {
        b();
        g();
        o();
        setKeepScreenOn(true);
    }

    protected void g() {
    }

    public void h() {
        o();
        if (this.e.a().u()) {
            b();
        }
    }

    public void i() {
    }

    public void b(int i, int i2) {
        if (701 == i) {
            a();
        } else if (702 == i) {
            b();
        }
    }

    public void j() {
        o();
        setKeepScreenOn(false);
    }

    public void k() {
    }

    public void a(boolean z) {
        if (!z && this.e != null) {
            this.e.m();
        }
    }

    public void a(bd bdVar) {
        this.f.a(bdVar);
    }

    public void l() {
    }

    public void a(aa aaVar) {
    }

    public void onClick(View view) {
        if (bcx.pause == view.getId()) {
            m();
        }
    }

    public void m() {
        if (this.e != null && this.e.a().s()) {
            if (this.h) {
                n();
            } else if (this.e.a().u()) {
                this.e.m();
            } else {
                this.e.a(false);
            }
            o();
        }
    }

    protected void n() {
        this.f.a();
        this.e.a(true);
        this.h = false;
        o();
    }

    protected void o() {
        if (this.h) {
            this.d.setImageResource(2130840015);
            this.d.setContentDescription(getResources().getString(2131363471));
        } else if (this.e.a().u()) {
            this.d.setImageResource(2130840013);
            this.d.setContentDescription(getResources().getString(2131363237));
        } else {
            this.d.setImageResource(2130840014);
            this.d.setContentDescription(getResources().getString(2131363345));
        }
    }

    public void a(double d) {
    }

    public View getContentView() {
        return this;
    }

    public Iterable<View> getHideableViews() {
        return this.i;
    }
}
