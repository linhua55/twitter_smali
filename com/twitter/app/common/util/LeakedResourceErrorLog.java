package com.twitter.app.common.util;

import bbl;

/* compiled from: Twttr */
public class LeakedResourceErrorLog<T> extends bbl {

    /* compiled from: Twttr */
    public class LeakedResourceException extends Exception {
        private static final long serialVersionUID = 4357076960099483579L;
    }

    public LeakedResourceErrorLog(Iterable<T> iterable) {
        int i = 0;
        for (Object next : iterable) {
            Object[] objArr = new Object[1];
            i++;
            objArr[0] = Integer.valueOf(i);
            a(String.format("LeakedResourceErrorLog.leaked_obj_name_%d", objArr), next.getClass().getSimpleName());
        }
        a("LeakedResourceErrorLog.leaked_obj_count", Integer.valueOf(i));
        a(new LeakedResourceException());
    }
}
