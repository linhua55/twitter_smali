package com.twitter.android.composer;

import android.app.Activity;
import com.twitter.android.MediaTagActivity;
import com.twitter.android.VideoEditorActivity;
import com.twitter.android.media.camera.CameraActivity;
import com.twitter.android.media.imageeditor.EditImageActivity;
import com.twitter.app.common.util.c;
import com.twitter.app.common.util.f;
import com.twitter.app.common.util.h;
import com.twitter.util.m;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
public class bm implements h {
    private static final List<Class<? extends Activity>> a;
    private static bm b;
    private long c;
    private long d;
    private boolean e;
    private boolean f;

    static {
        a = Arrays.asList(new Class[]{ComposerActivity.class, MediaTagActivity.class, CameraActivity.class, EditImageActivity.class, VideoEditorActivity.class});
    }

    public static bm a() {
        if (b == null) {
            synchronized (bm.class) {
                if (b == null) {
                    b = new bm();
                    c.a().a(new bn());
                    f.a().a(b);
                }
            }
        }
        return b;
    }

    public boolean b() {
        return this.f;
    }

    public void a(boolean z) {
        this.c = 0;
        this.d = m.b();
        this.e = z;
        this.f = true;
    }

    public long c() {
        if (!this.f) {
            return -1;
        }
        long b = (this.c + m.b()) - this.d;
        this.c = 0;
        this.d = 0;
        this.e = false;
        this.f = false;
        return b;
    }

    public void a(Activity activity) {
        if (!this.f) {
            return;
        }
        if (this.e) {
            this.c += m.b() - this.d;
        } else {
            c();
        }
    }

    public void b(Activity activity) {
        if (this.f) {
            this.d = m.b();
        }
    }

    protected void c(Activity activity) {
        if (this.f) {
            Object obj;
            Class cls = activity.getClass();
            for (Class isAssignableFrom : a) {
                if (isAssignableFrom.isAssignableFrom(cls)) {
                    obj = 1;
                    break;
                }
            }
            obj = null;
            if (obj == null) {
                c();
            }
        }
    }
}
