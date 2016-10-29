package org.spongycastle.i18n;

import java.util.Locale;

/* compiled from: Twttr */
public class MissingEntryException extends RuntimeException {
    private String debugMsg;
    protected final String key;
    protected final ClassLoader loader;
    protected final Locale locale;
    protected final String resource;
}
