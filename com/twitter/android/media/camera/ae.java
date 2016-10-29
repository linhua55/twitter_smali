package com.twitter.android.media.camera;

import android.content.Context;
import android.hardware.Camera.Size;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.MotionEventCompat;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import bbu;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.media.widget.CameraPreviewContainer;
import com.twitter.android.util.j;
import com.twitter.app.common.base.g;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.model.ImageFile;

/* compiled from: Twttr */
public class ae extends b {
    private static final ad[][] e;
    private final CameraPreviewContainer f;
    private final View g;
    private final ag h;

    static {
        r0 = new ad[3][];
        r0[0] = new ad[]{new ad(9), new ad(11)};
        r0[1] = new ad[]{new ad(0, 2131952048)};
        r0[2] = new ad[]{new ad(1, 2131952048)};
        e = r0;
    }

    ae(Context context, m mVar, c cVar) {
        super(context, mVar, cVar, 1);
        View b = cVar.b();
        this.f = (CameraPreviewContainer) b.findViewById(2131952036);
        this.g = b.findViewById(2131952037);
        this.h = new ag(this, b);
    }

    public void a(Bundle bundle) {
        this.h.a(bundle);
    }

    public void a(g gVar, Bundle bundle) {
        this.h.a(gVar, bundle);
    }

    public void a() {
        this.c.b(false);
        if (this.h.a()) {
            this.h.b();
        } else {
            this.g.setVisibility(0);
        }
        FragmentActivity j = this.d.j();
        if (j != null) {
            j.setRequestedOrientation(j.d() ? 4 : 1);
        }
    }

    public void b() {
        this.f.a.setVisibility(0);
        this.g.setVisibility(8);
    }

    public void c() {
        if (!this.h.a()) {
            this.c.g();
        }
    }

    public boolean a(View view, MotionEvent motionEvent) {
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            case Util.TYPE_DASH /*0*/:
                return true;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (!j.a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    return false;
                }
                g();
                return true;
            default:
                return false;
        }
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 27) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            g();
        }
        return true;
    }

    public void b(int i) {
        if (this.h.a()) {
            this.h.b(i);
        }
    }

    public void a(ImageFile imageFile) {
        this.h.a(imageFile);
        this.h.b();
    }

    public boolean d() {
        if (!this.h.a()) {
            return false;
        }
        this.h.c();
        return true;
    }

    public void aG_() {
        this.h.aG_();
    }

    public void f() {
        this.h.f();
    }

    public void a(int i) {
        ad.a(this.f, e, i);
        this.f.a(c(i), false);
        this.f.setScaleMode(i == 0 ? 4 : 3);
    }

    private void g() {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(this.d.g().g()).b(new String[]{"twitter_camera::photo:shutter:click"}));
        if (this.c.i()) {
            this.d.a(false);
        }
    }

    private float c(int i) {
        if (!j.a()) {
            Size a = this.c.a();
            if (a != null) {
                float max = (float) Math.max(a.width, a.height);
                float min = (float) Math.min(a.width, a.height);
                return i == 0 ? min / max : max / min;
            } else if (i != 0) {
                return 1.3333334f;
            } else {
                return AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION;
            }
        } else if (i == 0) {
            return AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION;
        } else {
            return 1.3333334f;
        }
    }

    private void a(String str) {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(this.d.g().g()).b(new String[]{"twitter_camera", TtmlNode.ANONYMOUS_REGION_ID, "speed_bump", str, "click"}));
    }
}
