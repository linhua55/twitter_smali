package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.twitter.library.media.widget.w;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: bxm */
class bxm implements Callable<Drawable> {
    final /* synthetic */ ImageResponse a;
    final /* synthetic */ Context b;
    final /* synthetic */ Bitmap c;
    final /* synthetic */ bxl d;

    bxm(bxl bxl, ImageResponse imageResponse, Context context, Bitmap bitmap) {
        this.d = bxl;
        this.a = imageResponse;
        this.b = context;
        this.c = bitmap;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Drawable a() throws Exception {
        List a = this.d.a(this.b, (float) ((a) this.a.e()).f().a());
        return a == null ? new BitmapDrawable(this.b.getResources(), this.c) : new w(this.b.getResources(), a, this.c, this.d.c);
    }
}
