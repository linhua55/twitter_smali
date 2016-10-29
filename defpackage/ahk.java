package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.android.moments.ui.fullscreen.hm;
import com.twitter.model.moments.x;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: ahk */
public class ahk {
    private final ViewGroup a;
    private ViewGroup b;

    public ahk(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    public void a(x xVar, hm hmVar) {
        if (this.b == null) {
            LayoutInflater.from(this.a.getContext()).inflate(2130969054, this.a);
            this.b = (ViewGroup) this.a.findViewById(2131952802);
            e.a(this.b);
        }
        this.a.setVisibility(0);
        this.b.setVisibility(0);
        TextView textView = (TextView) this.b.findViewById(2131952804);
        ((TextView) this.b.findViewById(2131952803)).setText(xVar.e);
        textView.setText(xVar.d);
        this.b.setOnClickListener(new ahl(this, hmVar, xVar));
    }
}
