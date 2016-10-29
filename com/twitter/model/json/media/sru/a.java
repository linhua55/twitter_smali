package com.twitter.model.json.media.sru;

import com.twitter.model.json.common.n;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class a extends n<Integer> {
    public a() {
        super(Integer.valueOf(2), new Entry[]{a("succeeded", Integer.valueOf(0)), a("pending", Integer.valueOf(1)), a("in_progress", Integer.valueOf(1)), a("failed", Integer.valueOf(2))});
    }
}
