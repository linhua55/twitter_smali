package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.Writer;

/* compiled from: Twttr */
public abstract class OutputDecorator implements Serializable {
    public abstract OutputStream a(b bVar, OutputStream outputStream) throws IOException;

    public abstract Writer a(b bVar, Writer writer) throws IOException;
}
