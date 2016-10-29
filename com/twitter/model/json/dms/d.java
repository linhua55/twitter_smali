package com.twitter.model.json.dms;

import com.twitter.model.dms.DMPaginationStatus;
import com.twitter.model.json.common.n;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class d extends n<DMPaginationStatus> {
    public d() {
        super(DMPaginationStatus.UNKNOWN, new Entry[]{a("AT_END", DMPaginationStatus.AT_END), a("HAS_MORE", DMPaginationStatus.HAS_MORE)});
    }
}
