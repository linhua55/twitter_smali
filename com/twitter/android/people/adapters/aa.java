package com.twitter.android.people.adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import bdl;
import com.twitter.android.people.adapters.viewbinders.aj;
import com.twitter.android.people.bb;
import java.util.List;

/* compiled from: Twttr */
public class aa extends bdl<i> {
    private final List<aj> a;
    private final bb b;

    public aa(Context context, bb bbVar, List<aj> list) {
        super(context);
        this.b = bbVar;
        this.a = list;
    }

    public int getItemViewType(int i) {
        i iVar = (i) getItem(i);
        if (iVar != null) {
            for (int i2 = 0; i2 < this.a.size(); i2++) {
                if (((aj) this.a.get(i2)).a(iVar)) {
                    return i2;
                }
            }
        }
        return -1;
    }

    public int getViewTypeCount() {
        return this.a.size();
    }

    protected View a(Context context, i iVar, ViewGroup viewGroup) {
        for (aj ajVar : this.a) {
            if (ajVar.a(iVar)) {
                return ajVar.a((Object) iVar, viewGroup);
            }
        }
        return null;
    }

    protected void a(View view, Context context, i iVar) {
        for (aj ajVar : this.a) {
            if (ajVar.a(iVar)) {
                this.b.a(iVar);
                ajVar.a(view, (Object) iVar);
                return;
            }
        }
    }

    public boolean areAllItemsEnabled() {
        return false;
    }

    protected boolean a(Context context, i iVar) {
        for (aj ajVar : this.a) {
            if (ajVar.a(iVar)) {
                this.b.a(iVar);
                return ajVar.a(iVar);
            }
        }
        return false;
    }
}
