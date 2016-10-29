package com.twitter.app.drafts;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bdl;
import com.twitter.library.media.util.x;
import com.twitter.library.util.ao;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.drafts.d;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class k extends bdl<d> {
    public k(Context context, LayoutInflater layoutInflater) {
        super(context);
    }

    protected View a(Context context, d dVar, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2130968781, viewGroup, false);
        inflate.setTag(2131951743, new l(inflate));
        return inflate;
    }

    protected void a(View view, Context context, d dVar) {
        l lVar = (l) view.getTag(2131951743);
        lVar.a.setVisibility(8);
        lVar.b.setVisibility(8);
        if (!dVar.d.isEmpty()) {
            EditableMedia a = ((DraftAttachment) dVar.d.get(0)).a(1);
            if (a != null && a.k.d.exists()) {
                lVar.a.setVisibility(0);
                lVar.a.a(x.a(context, a));
            }
        } else if (dVar.k != null) {
            lVar.b.setVisibility(0);
            lVar.b.setImageResource(com.twitter.config.d.a("cards_polling_card_new_poll_icon_compose") ? 2130839145 : 2130839147);
        }
        lVar.c.setTextSize(0, ao.a);
        if (aj.a(dVar.c)) {
            lVar.c.setText(2131362569);
        } else {
            lVar.c.setText(dVar.c);
        }
    }
}
