package com.twitter.model.people;

import com.twitter.util.object.e;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class ModuleTitle {
    public static final n<ModuleTitle> a;
    public static final ModuleTitle b;
    public final String c;
    public final Icon d;

    /* compiled from: Twttr */
    public enum Icon {
        NONE,
        ADDRESSBOOK,
        LIKE,
        RETWEET,
        MENTION,
        CLICK
    }

    static {
        a = new af();
        b = (ModuleTitle) new ae().q();
    }

    private ModuleTitle(ae aeVar) {
        this.c = e.b(aeVar.a);
        this.d = (Icon) e.b(aeVar.b, Icon.NONE);
    }
}
