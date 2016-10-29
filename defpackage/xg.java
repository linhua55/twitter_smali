package defpackage;

import android.view.View;
import android.widget.TextView;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
/* renamed from: xg */
public abstract class xg {
    private final View a;
    private final TextView b;

    xg(View view) {
        this.a = view.findViewById(2131952341);
        this.b = this.a != null ? (TextView) ObjectUtils.a(this.a.findViewById(2131952342)) : null;
    }
}
