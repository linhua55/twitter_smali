package tv.periscope.android.view;

import android.view.View;
import tv.periscope.android.library.j;
import tv.periscope.android.library.k;
import tv.periscope.android.ui.chat.d;
import tv.periscope.model.chat.Message;

/* compiled from: Twttr */
class b extends d {
    public Message l;
    private final d m;

    public b(View view, d dVar) {
        super(view, null);
        this.m = dVar;
        if (this.m != null) {
            view.setOnClickListener(this);
        }
        view.findViewById(k.chat_message_container).setBackgroundResource(j.ps__message_shadow_bg);
    }

    protected boolean a(tv.periscope.android.ui.chat.j jVar) {
        return true;
    }

    public void onClick(View view) {
        this.m.a(view);
    }
}
