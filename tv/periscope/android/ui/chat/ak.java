package tv.periscope.android.ui.chat;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class ak extends t implements OnClickListener {
    public final TextView a;
    public final ImageView b;
    public j c;
    private final x d;

    public ak(View view, x xVar) {
        super(view);
        this.a = (TextView) view.findViewById(k.status_item);
        this.b = (ImageView) view.findViewById(k.status_icon);
        this.d = xVar;
        if (this.d != null) {
            view.setOnClickListener(this);
        }
    }

    public void onClick(View view) {
        if (this.c != null) {
            if (a(this.c)) {
                this.d.a(this.c.a);
            } else {
                this.d.a();
            }
        }
    }
}
