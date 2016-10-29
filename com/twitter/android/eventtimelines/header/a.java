package com.twitter.android.eventtimelines.header;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.b;
import com.twitter.media.request.i;
import com.twitter.media.ui.image.BackgroundImageView;
import com.twitter.util.aj;
import defpackage.bbn;
import defpackage.cun;
import defpackage.cvi;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;

/* compiled from: Twttr */
public class a implements i<ImageResponse> {
    long a;
    File b;
    String c;
    private final Context d;
    private final b e;
    private boolean f;
    private long g;
    private BackgroundImageView h;

    public a(Context context, b bVar) {
        this.a = 0;
        this.c = null;
        this.d = context;
        this.e = bVar;
    }

    private static File a(Context context, long j) {
        return a(context, a(context.getResources().getConfiguration().orientation, j));
    }

    private static String a(int i, long j) {
        return String.format("%s_%s%s", new Object[]{Long.valueOf(j), Integer.valueOf(i), "_event_header.jpg"});
    }

    private static File a(Context context, String str) {
        File b = cvi.b(context);
        if (b == null) {
            return null;
        }
        return new File(b, str);
    }

    public BackgroundImageView a() {
        return this.h;
    }

    public void a(BackgroundImageView backgroundImageView) {
        this.h = backgroundImageView;
    }

    public void b() {
        if (this.h != null) {
            this.h.aG_();
        }
    }

    public void c() {
        if (this.h != null) {
            this.h.f();
        }
    }

    public void d() {
        if (this.h != null) {
            Drawable createFromPath;
            this.h.setAspectRatio(3.0f);
            File a = this.a == 0 ? null : a(this.d, this.a);
            if (a != null && a.exists()) {
                createFromPath = Drawable.createFromPath(a.getAbsolutePath());
            } else if (this.c == null || !new File(this.c).exists()) {
                createFromPath = ContextCompat.getDrawable(this.d, 2130840227);
            } else {
                createFromPath = Drawable.createFromPath(this.c);
            }
            this.h.setDefaultDrawable(createFromPath);
        }
    }

    public void a(Bundle bundle) {
        if (this.a != 0) {
            bundle.putLong("header_image_id", this.a);
        }
        if (this.b != null) {
            bundle.putString("previous_image_path", this.b.getAbsolutePath());
        }
    }

    public void b(Bundle bundle) {
        if (bundle == null) {
            this.c = null;
            this.a = 0;
            return;
        }
        this.c = bundle.getString("previous_image_path");
        this.a = bundle.getLong("header_image_id", 0);
    }

    public void a(Drawable drawable) {
        if (this.h != null) {
            this.h.setBackground(drawable);
        }
    }

    public void a(String str) {
        if (this.h != null) {
            if (aj.a((CharSequence) str)) {
                this.h.a(null);
                return;
            }
            long hashCode = (long) str.hashCode();
            if (this.g != hashCode) {
                this.g = hashCode;
                this.a = hashCode;
                this.b = a(this.d.getApplicationContext(), this.a);
                boolean z = this.b != null && this.b.exists();
                this.f = z;
                if (this.f) {
                    str = Uri.fromFile(this.b).toString();
                }
                this.h.a((b) com.twitter.media.request.a.a(str).a((i) this));
            }
        }
    }

    public void a(ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (bitmap != null) {
            this.e.a(bitmap);
            if (!this.f && this.b != null) {
                a(bitmap, this.b);
            }
        } else if (!this.f || this.b == null) {
            this.e.a(null);
        } else {
            this.b.delete();
            a(((com.twitter.media.request.a) imageResponse.e()).a());
        }
    }

    private void a(Bitmap bitmap, File file) {
        Closeable fileOutputStream;
        Throwable e;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                bitmap.compress(CompressFormat.JPEG, 100, fileOutputStream);
                cun.a(fileOutputStream);
            } catch (Exception e2) {
                e = e2;
                try {
                    bbn.a(e);
                    cun.a(fileOutputStream);
                } catch (Throwable th) {
                    e = th;
                    cun.a(fileOutputStream);
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = null;
            bbn.a(e);
            cun.a(fileOutputStream);
        } catch (Throwable th2) {
            e = th2;
            fileOutputStream = null;
            cun.a(fileOutputStream);
            throw e;
        }
    }
}
