package com.twitter.model.people;

import com.twitter.model.people.ModuleTitle.Icon;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class ae extends f<ModuleTitle> {
    private String a;
    private Icon b;

    public ae() {
        this.b = Icon.NONE;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public ae a(String str) {
        this.a = str;
        return this;
    }

    public ae a(Icon icon) {
        this.b = icon;
        return this;
    }

    protected ModuleTitle d() {
        return new ModuleTitle();
    }
}
