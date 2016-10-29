package defpackage;

import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import com.twitter.library.widget.TightTextView;

/* compiled from: Twttr */
/* renamed from: afl */
public class afl {
    private final agg a;
    private final TightTextView b;

    public afl(agg agg) {
        this.a = agg;
        ViewStub viewStub = (ViewStub) agg.e().findViewById(2131952639);
        viewStub.setLayoutResource(2130969033);
        View inflate = viewStub.inflate();
        ((ImageView) inflate.findViewById(2131952785)).setImageResource(2130839013);
        this.b = (TightTextView) inflate.findViewById(2131952786);
    }

    public void a(String str) {
        this.b.setText(str);
        this.b.setVisibility(0);
    }

    public void a() {
        this.b.setVisibility(8);
    }

    public agg b() {
        return this.a;
    }
}
