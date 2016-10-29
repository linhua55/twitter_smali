package defpackage;

import android.content.res.Resources;
import android.support.annotation.IdRes;
import android.view.View;
import android.widget.TextView;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: aex */
public class aex {
    public static aer a(Resources resources, View view, @IdRes int i, @IdRes int i2) {
        return new aer(resources, new aes(view, i, i2, resources.getConfiguration()), aex.a());
    }

    public static b<TextView, aeu> a() {
        return new aey();
    }
}
