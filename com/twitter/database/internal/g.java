package com.twitter.database.internal;

import com.twitter.database.model.b;
import com.twitter.database.model.l;
import com.twitter.util.object.ObjectUtils;
import defpackage.aoc;

/* compiled from: Twttr */
public class g {
    public static <S extends l> S a(Class<S> cls, b bVar) {
        try {
            return (l) ObjectUtils.a(aoc.a(cls).getConstructor(new Class[]{b.class}).newInstance(new Object[]{bVar}));
        } catch (Throwable e) {
            throw new IllegalArgumentException(e);
        } catch (Throwable e2) {
            throw new IllegalArgumentException(e2);
        } catch (Throwable e22) {
            throw new IllegalArgumentException(e22);
        } catch (Throwable e222) {
            throw new IllegalArgumentException(e222);
        } catch (Throwable e2222) {
            throw new IllegalArgumentException(e2222);
        }
    }
}
