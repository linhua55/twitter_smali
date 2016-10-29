package com.twitter.android.media.camera;

import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.media.widget.CameraSpeedBumpBar;
import com.twitter.android.media.widget.j;
import com.twitter.app.common.base.g;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.h;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
class ag implements j, h {
    final CameraSpeedBumpBar a;
    final /* synthetic */ ae b;
    private final MediaImageView c;
    private final View d;
    private final View e;
    private ImageFile f;

    ag(ae aeVar, View view) {
        this.b = aeVar;
        this.c = (MediaImageView) view.findViewById(2131952041);
        this.d = view.findViewById(2131952040);
        this.e = view.findViewById(2131952048);
        this.a = (CameraSpeedBumpBar) view.findViewById(2131952049);
        this.a.setListener(this);
    }

    public void a(int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.b.a("retake");
                c();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.f != null) {
                    this.b.a("use");
                    new af(this.b.b, this.f, this).execute(new Void[0]);
                    this.f = null;
                }
            case Util.TYPE_OTHER /*3*/:
                this.b.a("close");
                g();
                this.b.d.i();
            default:
        }
    }

    public boolean a() {
        return this.f != null;
    }

    public void a(ImageFile imageFile) {
        this.f = imageFile;
    }

    public void b() {
        if (this.f != null) {
            this.d.setVisibility(0);
            this.e.setVisibility(4);
            this.b.f.a.setVisibility(8);
            this.b.g.setVisibility(8);
            this.b.d.c().b(true);
            this.c.setVisibility(0);
            this.a.setVisibility(0);
            if (com.twitter.android.util.j.d()) {
                this.c.a(a.a(this.f), false);
                return;
            }
            int h = this.b.d.h();
            this.c.a(a.a(this.f).a(r.a(h)), false);
            this.a.a(h);
        }
    }

    public void c() {
        g();
        this.c.setVisibility(8);
        this.d.setVisibility(8);
        this.a.setVisibility(8);
        this.e.setVisibility(0);
        this.b.f.a.setVisibility(0);
        this.b.d.c().a(true);
        this.b.g.setVisibility(0);
        this.b.d.a(true);
        this.b.c.g();
    }

    public void a(Bundle bundle) {
        if (this.f != null) {
            bundle.putParcelable("preview_image", this.f);
        }
    }

    public void a(g gVar, Bundle bundle) {
        if (bundle != null && bundle.containsKey("preview_image")) {
            this.f = (ImageFile) bundle.getParcelable("preview_image");
        }
    }

    public void b(int i) {
        com.twitter.util.h.b(!com.twitter.android.util.j.d());
        com.twitter.android.util.j.a(i, "speed_bump", this.b.d.g().g());
        if (this.f != null) {
            this.c.a(a.a(this.f).a(i), false);
        }
        this.a.a(i);
    }

    public void aG_() {
        this.c.aG_();
    }

    public void f() {
        this.c.f();
    }

    private void g() {
        f();
        if (this.f != null) {
            this.f.c();
            this.f = null;
        }
    }

    void d() {
        Toast.makeText(this.b.b.getApplicationContext(), this.b.b.getString(2131363524), 0).show();
        this.b.d.i();
    }

    void b(ImageFile imageFile) {
        this.b.d.a(MediaType.b, imageFile);
    }
}
