package com.twitter.media.ui.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.process.ImagePostProcessException;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
final class a implements com.twitter.media.request.process.a {
    a() {
    }

    public j<Drawable> a(Context context, ImageResponse imageResponse) {
        if (!imageResponse.d()) {
            return ObservablePromise.a(new ImagePostProcessException(imageResponse));
        }
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (bitmap == null) {
            return ObservablePromise.a(null);
        }
        return ObservablePromise.a(new BitmapDrawable(context.getResources(), bitmap));
    }
}
