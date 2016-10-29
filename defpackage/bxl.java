package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.internal.android.service.p;
import com.twitter.library.media.widget.w;
import com.twitter.media.model.ImageFile;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.process.a;
import com.twitter.model.media.EditableImage;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.math.c;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import cto;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bxl */
public class bxl implements a {
    private final List<ckf> a;
    private final c b;
    private final float c;
    private final int d;
    private volatile boolean e;

    public bxl(EditableImage editableImage) {
        this(editableImage, e.a(editableImage.h));
    }

    public bxl(EditableImage editableImage, List<ckf> list) {
        this.a = list;
        this.c = ((ImageFile) editableImage.k).e.e();
        this.b = editableImage.f;
        this.d = editableImage.e;
    }

    public j<Drawable> a(Context context, ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (bitmap == null) {
            return ObservablePromise.a(null);
        }
        if (this.a.isEmpty()) {
            return ObservablePromise.a(new BitmapDrawable(context.getResources(), bitmap));
        }
        j<Drawable> a = new com.twitter.util.concurrent.c().a(p.a().a(ExecutionClass.a)).a(new bxm(this, imageResponse, context, bitmap)).a();
        a.d(new bxn(this));
        return a;
    }

    public boolean a(Context context, Bitmap bitmap) {
        List a = a(context, (float) bitmap.getWidth());
        if (a == null) {
            return false;
        }
        w wVar = new w(context.getResources(), a, null, 0.0f);
        Canvas canvas = new Canvas(bitmap);
        wVar.setBounds(0, 0, bitmap.getWidth(), bitmap.getHeight());
        wVar.draw(canvas);
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    java.util.List<com.twitter.library.media.widget.x> a(android.content.Context r10, float r11) {
        /*
        r9 = this;
        r1 = 0;
        r0 = r9.a;
        r0 = r0.size();
        r2 = com.twitter.util.collection.n.a(r0);
        r0 = r9.a;
        r3 = r0.iterator();
    L_0x0011:
        r0 = r3.hasNext();
        if (r0 == 0) goto L_0x00a0;
    L_0x0017:
        r0 = r3.next();
        r0 = (defpackage.ckf) r0;
        r4 = r9.e;
        if (r4 == 0) goto L_0x0023;
    L_0x0021:
        r0 = r1;
    L_0x0022:
        return r0;
    L_0x0023:
        r4 = r9.c;
        r5 = r9.b;
        r6 = r9.d;
        r4 = r0.a(r4, r5, r6);
        r5 = 4;
        r5 = new float[r5];
        r5 = {-1090519040, 0, 1056964608, 0};
        r4.mapPoints(r5);
        r6 = 2;
        r6 = r5[r6];
        r7 = 0;
        r7 = r5[r7];
        r6 = r6 - r7;
        r7 = 3;
        r7 = r5[r7];
        r8 = 1;
        r5 = r5[r8];
        r5 = r7 - r5;
        r5 = com.twitter.util.math.b.a(r6, r5);
        r5 = r5 * r11;
        r6 = r0.b;
        r6 = r6.j;
        r6 = r6.b;
        r6 = r6 * r5;
        r5 = com.twitter.util.math.Size.a(r5, r6);
        r0 = r0.b;
        r0 = r0.j;
        r6 = r0.c;
        r6 = r6.c;
        r5 = com.twitter.media.request.a.a(r6, r5);
        r6 = "stickers";
        r5 = r5.a(r6);
        r6 = new com.twitter.library.media.util.ad;
        r6.<init>(r0);
        r0 = r5.a(r6);
        r0 = r0.a();
        r5 = com.twitter.library.media.manager.l.a(r10);
        r0 = r5.b(r0);
        r0 = r0.get();	 Catch:{ CancellationException -> 0x008d, InterruptedException -> 0x0090, ExecutionException -> 0x00a8 }
        r0 = (com.twitter.media.request.ImageResponse) r0;	 Catch:{ CancellationException -> 0x008d, InterruptedException -> 0x0090, ExecutionException -> 0x00a8 }
        r0 = r0.f();	 Catch:{ CancellationException -> 0x008d, InterruptedException -> 0x0090, ExecutionException -> 0x00a8 }
        r0 = (android.graphics.Bitmap) r0;	 Catch:{ CancellationException -> 0x008d, InterruptedException -> 0x0090, ExecutionException -> 0x00a8 }
        if (r0 != 0) goto L_0x0096;
    L_0x008b:
        r0 = r1;
        goto L_0x0022;
    L_0x008d:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0022;
    L_0x0090:
        r0 = move-exception;
    L_0x0091:
        bbn.a(r0);
        r0 = r1;
        goto L_0x0022;
    L_0x0096:
        r5 = new com.twitter.library.media.widget.x;
        r5.<init>(r0, r4);
        r2.c(r5);
        goto L_0x0011;
    L_0x00a0:
        r0 = r2.q();
        r0 = (java.util.List) r0;
        goto L_0x0022;
    L_0x00a8:
        r0 = move-exception;
        goto L_0x0091;
        */
        throw new UnsupportedOperationException("Method not decompiled: bxl.a(android.content.Context, float):java.util.List<com.twitter.library.media.widget.x>");
    }

    public int hashCode() {
        return (((((ObjectUtils.a(this.a) * 31) + ObjectUtils.b(this.b)) * 31) + ObjectUtils.a(this.c)) * 31) + this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bxl)) {
            return false;
        }
        bxl bxl = (bxl) obj;
        if (cto.b(this.a, bxl.a) && ObjectUtils.a(this.b, bxl.b) && this.c == bxl.c && this.d == bxl.d) {
            return true;
        }
        return false;
    }
}
