package com.twitter.android.autocomplete.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.autocomplete.a;
import com.twitter.library.database.dm.d;
import com.twitter.library.provider.LocalContactInfo;
import com.twitter.library.provider.LocalContactInfo.Type;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.config.CommonRoundingStrategy;
import com.twitter.model.core.TwitterUser;
import defpackage.bcv;

/* compiled from: Twttr */
public class DMRecipientAdapter<T> extends g<T> {
    private final int b;

    /* compiled from: Twttr */
    public enum Divider {
        CONTACTS
    }

    public DMRecipientAdapter(Context context, a<T> aVar) {
        super(context, aVar, 2130968771);
        this.b = (int) context.getResources().getDimension(bcv.medium_user_image_size);
    }

    public int a(T t) {
        if (t instanceof TwitterUser) {
            return 0;
        }
        if (t instanceof d) {
            return 1;
        }
        if (t instanceof LocalContactInfo) {
            return 2;
        }
        if (t instanceof Divider) {
            return 4;
        }
        return 3;
    }

    public int getViewTypeCount() {
        return 5;
    }

    public View a(Context context, T t, ViewGroup viewGroup) {
        int a = a((Object) t);
        LayoutInflater from = LayoutInflater.from(context);
        View inflate;
        if (a == 3) {
            inflate = from.inflate(2130968777, viewGroup, false);
            inflate.setTag((TextView) inflate.findViewById(2131951868));
            return inflate;
        } else if (a == 2) {
            r0 = from.inflate(2130968767, viewGroup, false);
            r0.setTag(new d(r0));
            return r0;
        } else if (a == 1) {
            r0 = from.inflate(2130968770, viewGroup, false);
            c cVar = new c(r0);
            cVar.a.setSize(this.b);
            r0.setTag(cVar);
            return r0;
        } else if (a == 0) {
            inflate = super.a(context, (Object) t, viewGroup);
            if (inflate != null) {
                k kVar = (k) inflate.getTag();
                kVar.a.setRoundingStrategy(CommonRoundingStrategy.c);
                kVar.a.a(this.b, this.b);
            }
            return inflate;
        } else if (a != 4) {
            return super.a(context, (Object) t, viewGroup);
        } else {
            r0 = from.inflate(2130968756, viewGroup, false);
            r0.setTag(r0.findViewById(2131952329));
            return r0;
        }
    }

    public void a(View view, Context context, T t) {
        int i = 0;
        int a = a((Object) t);
        if (a == 3) {
            ((TextView) view.getTag()).setText("@" + t);
        } else if (a == 1) {
            d dVar = (d) t;
            c cVar = (c) view.getTag();
            cVar.a.a(dVar, null);
            cVar.b.setText(dVar.d);
        } else if (a == 2) {
            LocalContactInfo localContactInfo = (LocalContactInfo) t;
            d dVar2 = (d) view.getTag();
            boolean z = Type.PHONE == localContactInfo.c;
            dVar2.a.setText(localContactInfo.a);
            dVar2.b.setText(localContactInfo.b);
            dVar2.c.setRoundingStrategy(CommonRoundingStrategy.c);
            dVar2.c.a(new b(localContactInfo.a().toString()).d(true));
            View view2 = dVar2.d;
            if (!z) {
                i = 8;
            }
            view2.setVisibility(i);
        } else if (a == 4) {
            ((TextView) view.getTag()).setText(a((Divider) t));
        } else {
            super.a(view, context, (Object) t);
        }
    }

    private String a(Divider divider) {
        switch (b.a[divider.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return i().getString(2131362429);
            default:
                return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }
}
