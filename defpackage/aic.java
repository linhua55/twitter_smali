package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.media.ui.image.config.d;
import com.twitter.media.ui.image.config.g;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
/* renamed from: aic */
public class aic implements ajj {
    private final ImageView a;
    private final Size b;

    public static aic a(Context context, Bitmap bitmap) {
        return new aic(new RichImageView(context), bitmap, Size.a(bitmap), d.a(context.getResources().getDimension(2131690156)));
    }

    aic(RichImageView richImageView, Bitmap bitmap, Size size, g gVar) {
        this.b = size;
        this.a = richImageView;
        richImageView.setScaleType(ScaleType.FIT_XY);
        richImageView.setImageBitmap(bitmap);
        richImageView.setRoundingStrategy(gVar);
    }

    public View a() {
        return this.a;
    }

    public void b() {
        this.a.setImageBitmap(null);
    }
}
