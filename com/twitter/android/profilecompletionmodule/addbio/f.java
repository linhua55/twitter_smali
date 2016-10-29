package com.twitter.android.profilecompletionmodule.addbio;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ContextThemeWrapper;
import android.view.ViewGroup;
import cgu;
import com.twitter.internal.android.widget.PillToggleButton;
import defpackage.bdn;

/* compiled from: Twttr */
public class f extends bdn<i> {
    private final h a;
    private final cgu<String> b;

    public /* synthetic */ ViewHolder a(ViewGroup viewGroup, int i) {
        return b(viewGroup, i);
    }

    public f(h hVar, cgu<String> cgu_java_lang_String) {
        this.a = hVar;
        this.b = cgu_java_lang_String;
    }

    public i b(ViewGroup viewGroup, int i) {
        return new i(new PillToggleButton(new ContextThemeWrapper(viewGroup.getContext(), 2131559039)));
    }

    public void a(i iVar, int i) {
        Object b = b(i);
        PillToggleButton pillToggleButton = iVar.a;
        pillToggleButton.setText(b);
        pillToggleButton.setOnClickListener(new g(this, b));
    }

    public int a() {
        return this.b.aU_();
    }

    public String b(int i) {
        return (String) this.b.a(i);
    }
}
