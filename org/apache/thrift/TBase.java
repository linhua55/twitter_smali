package org.apache.thrift;

import java.io.Serializable;
import org.apache.thrift.protocol.d;

/* compiled from: Twttr */
public interface TBase<T extends TBase, F extends d> extends Serializable, Comparable<T> {
    void a(d dVar) throws TException;
}
