package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: xz */
public class xz extends xv {
    private final TextView a;
    private final ViewGroup b;
    private final TextView c;

    public xz(View view) {
        super(view);
        this.a = (TextView) e.a(ObjectUtils.a(view.findViewById(2131952338)));
        this.b = (ViewGroup) e.a(ObjectUtils.a(view.findViewById(2131952340)));
        this.c = (TextView) e.a(ObjectUtils.a(view.findViewById(2131952339)));
    }
}
