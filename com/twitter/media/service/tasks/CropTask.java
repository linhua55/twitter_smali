package com.twitter.media.service.tasks;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.media.ImageInfo;
import com.twitter.media.MediaUtils;
import com.twitter.media.decoder.ImageDecoder;
import com.twitter.media.service.core.MediaServiceTask;
import com.twitter.media.util.a;
import com.twitter.media.util.f;
import com.twitter.util.ab;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;
import com.twitter.util.math.c;
import cvi;
import java.io.File;

/* compiled from: Twttr */
public class CropTask extends MediaServiceTask {
    public static final Creator<CropTask> CREATOR;
    public Uri a;
    public File b;
    public c c;
    public int d;

    static {
        CREATOR = new a();
    }

    private CropTask(Parcel parcel) {
        a(parcel);
    }

    public CropTask(Uri uri, File file, c cVar, int i) {
        this.a = uri;
        this.b = file;
        this.c = cVar;
        this.d = i;
    }

    public void a(Parcel parcel) {
        super.a(parcel);
        this.a = Uri.parse(parcel.readString());
        this.b = new File(parcel.readString());
        this.c = (c) ab.a(parcel, c.a);
        this.d = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a.toString());
        parcel.writeString(this.b.getAbsolutePath());
        ab.a(parcel, this.c, c.a);
        parcel.writeInt(this.d);
    }

    protected boolean b(Context context) {
        boolean e = e(context);
        if (e) {
            return e;
        }
        return f(context);
    }

    protected boolean c(Context context) {
        return b(context);
    }

    private Rect a(Size size) {
        return b.a(this.c.a(size), size.f());
    }

    private boolean e(Context context) {
        boolean z = false;
        if (MediaUtils.a()) {
            ImageInfo a = MediaUtils.a(context, this.a);
            if (a != null) {
                Rect a2 = a(Size.a(a.width, a.height));
                z = (a2.isEmpty() || (a2.width() == a.width && a2.height() == a.height)) ? cvi.a(context, this.a, this.b) : MediaUtils.a(context, this.a, this.b, a2);
            }
        }
        if (z && this.d != 0) {
            f.a(this.b, this.d);
        }
        if (!z) {
            this.b.delete();
        }
        return z;
    }

    private boolean f(Context context) {
        boolean z = true;
        boolean z2 = false;
        String a = cvi.a(context, this.a);
        Bitmap b = ImageDecoder.a(context, this.a).b();
        if (b != null) {
            Size a2 = Size.a(b);
            Rect a3 = a(a2);
            boolean z3 = (a2.c() || a3.isEmpty()) ? false : true;
            if (a3.width() == a2.a() && a3.height() == a2.b()) {
                z = false;
            }
            if (z3 && r1) {
                Bitmap a4 = a.a(b, a3, null, false);
                if (a4 != null) {
                    z2 = a.a(a4, this.b, "image/png".equals(a) ? CompressFormat.PNG : CompressFormat.JPEG, 95);
                    a4.recycle();
                }
            } else {
                z2 = cvi.a(context, this.a, this.b);
            }
            b.recycle();
            if (z2 && this.d != 0) {
                f.a(this.b, this.d);
            }
            if (!z2) {
                this.b.delete();
            }
        }
        return z2;
    }
}
