package defpackage;

import android.view.View;
import android.view.View.MeasureSpec;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
/* renamed from: ajy */
public class ajy {
    public static void a(View view, Size size) {
        view.measure(MeasureSpec.makeMeasureSpec(size.a(), 1073741824), MeasureSpec.makeMeasureSpec(size.b(), 1073741824));
        view.layout(0, 0, size.a(), size.b());
    }
}
