package com.twitter.media.service.tasks;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.config.d;
import com.twitter.media.MediaUtils;
import com.twitter.media.decoder.ImageDecoder;
import com.twitter.media.service.core.MediaServiceTask;
import com.twitter.media.util.ImageOrientation;
import com.twitter.media.util.a;
import com.twitter.media.util.f;
import com.twitter.util.ao;
import java.io.File;

/* compiled from: Twttr */
public class ResizeTask extends MediaServiceTask {
    public static final Creator<ResizeTask> CREATOR;
    private Uri a;
    private File b;
    private int c;
    private int d;
    private boolean e;
    private boolean f;

    static {
        CREATOR = new b();
    }

    private ResizeTask(Parcel parcel) {
        a(parcel);
    }

    public ResizeTask(Uri uri, File file, int i, int i2, boolean z) {
        this.a = uri;
        this.b = file;
        this.c = i;
        this.d = i2;
        this.e = d.a("media_service_native_resize_enabled");
        this.f = z;
    }

    public void a(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        super.a(parcel);
        this.a = Uri.parse(parcel.readString());
        this.b = new File(parcel.readString());
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.e = z;
        if (parcel.readInt() == 0) {
            z2 = false;
        }
        this.f = z2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a.toString());
        parcel.writeString(this.b.getAbsolutePath());
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        if (this.e) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (!this.f) {
            i3 = 0;
        }
        parcel.writeInt(i3);
    }

    protected boolean b(Context context) {
        boolean e = e(context);
        if (e) {
            return e;
        }
        return f(context);
    }

    protected boolean c(Context context) {
        return f(context);
    }

    private boolean e(Context context) {
        if (!this.e || !MediaUtils.a() || MediaUtils.a(context, this.a) == null || !MediaUtils.a(context, this.a, this.b, this.c, this.d)) {
            return false;
        }
        a(context, true);
        return true;
    }

    private boolean f(Context context) {
        if (ImageDecoder.a(context, this.a).c().c()) {
            return false;
        }
        boolean z;
        Bitmap b = ImageDecoder.a(context, this.a).a(this.c).b();
        if (b == null) {
            b = ImageDecoder.a(context, this.a).c(this.c).a().b();
            z = true;
        } else {
            z = false;
        }
        if (b == null) {
            b = ImageDecoder.a(context, this.a).b(this.c).a().b();
        }
        if (b == null) {
            return false;
        }
        boolean a = a.a(b, this.b, CompressFormat.JPEG, this.d);
        a(context, z);
        b.recycle();
        return a;
    }

    private void a(Context context, boolean z) {
        File a = ao.a(context, this.a);
        if (a == null) {
            return;
        }
        if (this.f) {
            f.a(a, this.b, z ? ImageOrientation.UNDEFINED : ImageOrientation.NORMAL);
        } else if (z) {
            ImageOrientation a2 = f.a(a);
            if (a2 != ImageOrientation.UNDEFINED) {
                f.a(this.b, a2);
            }
        }
    }
}
