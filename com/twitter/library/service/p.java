package com.twitter.library.service;

import com.twitter.internal.android.service.ab;
import com.twitter.internal.android.service.ac;
import com.twitter.internal.android.service.u;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.k;
import com.twitter.platform.PlatformContext;
import com.twitter.util.aj;
import com.twitter.util.al;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public abstract class p extends ac<aa> {
    public static final Set<RequestMethod> b;
    protected final Set<Integer> c;
    protected final Set<RequestMethod> d;

    protected abstract boolean a(HttpOperation httpOperation, k kVar);

    static {
        b = new HashSet(Arrays.asList(RequestMethod.values()));
    }

    protected p(Collection<Integer> collection) {
        this.c = new HashSet(collection);
        this.d = b;
    }

    protected p(Collection<RequestMethod> collection, Collection<Integer> collection2) {
        this.d = new HashSet(collection);
        this.c = new HashSet(collection2);
    }

    public final boolean a(ab<aa> abVar) {
        HttpOperation f = ((aa) abVar.b()).f();
        if (f == null) {
            return false;
        }
        k l = f.l();
        boolean z = this.d.contains(f.h()) && this.c.contains(Integer.valueOf(l.a)) && a(f, l);
        return z;
    }

    public boolean a(u uVar, ab<aa> abVar) {
        return false;
    }

    public long b(ab<aa> abVar) {
        return 0;
    }

    public static long a(HttpOperation httpOperation) {
        long j = 0;
        String b = httpOperation.b("Retry-After");
        if (!aj.b(b)) {
            return j;
        }
        try {
            return TimeUnit.SECONDS.toMillis((long) Integer.parseInt(b));
        } catch (NumberFormatException e) {
            try {
                Date parse = al.a.parse(b);
                if (parse == null) {
                    return j;
                }
                return parse.getTime() - (PlatformContext.f().a().a() + httpOperation.r());
            } catch (ParseException e2) {
                return j;
            }
        }
    }
}
