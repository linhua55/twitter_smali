package tv.periscope.android.ui.chat;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class aj extends t implements OnClickListener {
    public final TextView a;
    public j b;
    private final x c;

    public aj(View view, x xVar) {
        super(view);
        this.a = (TextView) view.findViewById(k.text);
        this.c = xVar;
        if (this.c != null) {
            view.setOnClickListener(this);
        }
    }

    public void onClick(View view) {
        if (this.b != null) {
            if (a(this.b)) {
                this.c.a(this.b.a);
            } else {
                this.c.a();
            }
        }
    }
}
