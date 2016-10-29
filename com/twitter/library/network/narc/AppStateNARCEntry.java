package com.twitter.library.network.narc;

import com.twitter.library.network.narc.AbstractNARCEntry.EntryType;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class AppStateNARCEntry extends AbstractNARCEntry {
    public final AppState c;
    public final AppStateType d;
    public final String e;

    /* compiled from: Twttr */
    public enum AppState {
        onStart,
        onResume,
        onPause,
        onStop
    }

    /* compiled from: Twttr */
    public enum AppStateType {
        active,
        inactive
    }

    public AppStateNARCEntry(AppState appState, AppStateType appStateType, String str) {
        super(EntryType.appState);
        this.c = appState;
        this.d = appStateType;
        this.e = str;
    }

    protected synchronized JSONObject a() throws JSONException {
        JSONObject a;
        a = super.a();
        a.put("appState", this.c.name());
        a.put("appStateType", this.d.name());
        a.put("sourceName", this.e);
        return a;
    }
}
