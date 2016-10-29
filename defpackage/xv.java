package defpackage;

import android.view.View;
import android.widget.TextView;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: xv */
public class xv extends xg {
    private final TextView a;

    public xv(View view) {
        super(view);
        this.a = (TextView) e.a(ObjectUtils.a(view.findViewById(csa.text)));
    }
}
