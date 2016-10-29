package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import bje;
import com.twitter.android.dm.z;
import com.twitter.android.xp;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.widget.UserView;
import com.twitter.media.ui.image.config.CommonRoundingStrategy;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: xw */
public class xw extends xu<bje> {
    private final TextView k;
    private final ViewGroup l;
    private final TextView m;
    private final boolean n;
    private final z o;

    private xw(xy xyVar) {
        super(xyVar);
        this.n = xyVar.c;
        this.o = xyVar.d;
        xz xzVar = (xz) xyVar.a;
        this.k = xzVar.a;
        this.l = xzVar.b;
        this.m = xzVar.c;
    }

    public void a() {
        List list = (List) n.d().c(((bje) this.a).h()).d(Long.valueOf(this.h)).q();
        this.j.setText(a(this.b.d));
        this.m.setVisibility(8);
        if (list.isEmpty()) {
            this.k.setVisibility(8);
            this.l.setVisibility(8);
            return;
        }
        this.k.setVisibility(0);
        this.l.setVisibility(0);
        this.k.setText(this.g.getString(2131362484, new Object[]{Integer.valueOf(list.size())}));
        this.l.removeAllViews();
        this.o.d();
        int i = 0;
        while (i < 6 && i < list.size()) {
            UserView userView = (UserView) View.inflate(this.f, 2130968749, null);
            ((UserImageView) userView.findViewById(2131951736)).setRoundingStrategy(CommonRoundingStrategy.CIRCLE);
            userView.setTag(new xp(userView));
            this.l.addView(userView);
            this.o.a((Long) list.get(i), userView);
            i++;
        }
        this.o.a(list);
        if (this.n) {
            this.m.setVisibility(0);
        }
    }

    private String a(String str) {
        if (aj.a(str)) {
            return "";
        }
        return this.g.getString(2131362427, new Object[]{str});
    }
}
