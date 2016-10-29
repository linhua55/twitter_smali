package tv.periscope.android.api;

import defpackage.op;
import java.util.List;

/* compiled from: Twttr */
public class HelloResponse extends PsResponse {
    @op(a = "features")
    public Features featureDetails;
    @op(a = "warning_phrases")
    public List<WarningPhrases> warningPhrases;
}
