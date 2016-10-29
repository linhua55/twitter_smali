package com.twitter.android.initialization;

import bbn;
import com.evernote.android.job.Job;
import com.evernote.android.job.c;
import com.twitter.library.provider.q;
import vy;

/* compiled from: Twttr */
class h implements c {
    private h() {
    }

    public Job a(String str) {
        if (str.equals("DatabaseCleanUpJob")) {
            return new q();
        }
        if (str.startsWith("TpmIdSyncJob_")) {
            return new vy();
        }
        bbn.a(new IllegalArgumentException(str + " has not been added to the JobCreator"));
        return null;
    }
}
