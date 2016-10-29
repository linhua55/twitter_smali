package com.twitter.library.api.upload;

import android.content.Context;
import android.os.AsyncTask;
import bbu;
import com.twitter.config.d;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.service.tasks.ResizeTask;
import com.twitter.platform.PlatformContext;
import com.twitter.util.concurrent.c;
import com.twitter.util.concurrent.j;
import com.twitter.util.h;
import com.twitter.util.math.Size;
import java.io.File;

/* compiled from: Twttr */
public class b implements d {
    private final Context a;
    private final int[] b;
    private final int[] c;
    private final int d;
    private final ImageFile e;
    private final long f;
    private ImageFile g;
    private int h;

    public b(Context context, int[] iArr, int[] iArr2, int i, ImageFile imageFile, long j) {
        this.a = context.getApplicationContext();
        this.b = iArr;
        this.c = iArr2;
        this.d = i;
        this.e = imageFile;
        this.f = j;
        this.g = imageFile;
    }

    public boolean a() {
        return this.h >= this.b.length;
    }

    public void b() {
        h.c();
        e();
    }

    public j<Void> c() {
        return new c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new c(this)).a();
    }

    public MediaFile d() {
        h.c();
        while (!a()) {
            e();
            this.g = a(this.b[this.h], this.c[this.h]);
            this.h++;
            if (this.g != null && this.g.d.length() < ((long) this.d)) {
                break;
            }
        }
        return this.g;
    }

    private void e() {
        if (!(this.g == null || this.g.a(this.e))) {
            this.g.b();
        }
        this.g = null;
    }

    private void a(String str, String str2, int i) {
        String a = TwitterScribeLog.a(new String[]{"::image_processor", str, str2});
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.f).b(new String[]{a})).c(2)).d("size=" + i));
    }

    private ImageFile a(int i, int i2) {
        File a = PlatformContext.f().e().a(MediaType.b.extension);
        if (new ResizeTask(this.e.a(), a, i, i2, d.a("photo_upload_preserve_exif_data_enabled")).d(this.a)) {
            a("resize", "success", i);
            ImageFile a2 = ImageFile.a(a);
            if (a2 == null) {
                return this.e;
            }
            Size size = this.e.e;
            if (size.a() > i || size.b() > i || ((float) a2.d.length()) / ((float) this.e.d.length()) <= 0.7f) {
                return a2;
            }
            a("resize", "skip", i);
            a2.b();
            return this.e;
        }
        a("resize", "failure", i);
        return null;
    }
}
