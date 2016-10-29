package com.twitter.library.util;

import com.twitter.model.core.ca;
import com.twitter.model.core.cd;
import java.util.Iterator;

/* compiled from: Twttr */
public class ag {
    private static ca a(cd cdVar, String str) {
        if (cdVar != null) {
            Iterator it = cdVar.iterator();
            while (it.hasNext()) {
                ca caVar = (ca) it.next();
                if (str.equalsIgnoreCase(caVar.e)) {
                    return caVar;
                }
            }
        }
        return null;
    }

    public static ca a(cd cdVar) {
        return a(cdVar, "screen_name");
    }
}
