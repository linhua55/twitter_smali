package com.twitter.android.autocomplete.adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.provider.g;
import com.twitter.android.provider.m;
import com.twitter.android.provider.z;
import tq;

/* compiled from: Twttr */
public class a extends h<tq, m> {
    private final l a;
    private final e b;

    public a(Context context) {
        super(context);
        this.a = new l(context, 2130969489);
        this.b = new e(context);
    }

    public int b() {
        tq tqVar = (tq) c();
        return tqVar != null ? tqVar.b : 0;
    }

    protected View a(Context context, m mVar, ViewGroup viewGroup) {
        switch (b()) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.a.a(context, (z) mVar, viewGroup);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return this.b.a(context, (g) mVar, viewGroup);
            default:
                return null;
        }
    }

    protected void a(View view, Context context, m mVar) {
        switch (b()) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.a.a(view, context, (z) mVar);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.b.a(view, context, (g) mVar);
            default:
        }
    }

    public long getItemId(int i) {
        switch (b()) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.a.getItemId(i);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return this.b.getItemId(i);
            default:
                return -1;
        }
    }

    public int getItemViewType(int i) {
        switch (b()) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return 0;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 1;
            default:
                return -1;
        }
    }

    public int getViewTypeCount() {
        return 2;
    }

    public static String a(int i, m mVar) {
        if (i == 1) {
            return "@" + ((z) mVar).b;
        }
        if (i == 2) {
            return ((g) mVar).a;
        }
        return TtmlNode.ANONYMOUS_REGION_ID;
    }
}
