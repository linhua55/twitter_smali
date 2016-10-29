package org.slf4j.helpers;

import java.io.ObjectStreamException;
import java.io.Serializable;
import org.slf4j.b;
import org.slf4j.c;

/* compiled from: Twttr */
abstract class NamedLoggerBase implements Serializable, b {
    private static final long serialVersionUID = 7535258609338176893L;
    protected String name;

    NamedLoggerBase() {
    }

    public String a() {
        return this.name;
    }

    protected Object readResolve() throws ObjectStreamException {
        return c.a(a());
    }
}
