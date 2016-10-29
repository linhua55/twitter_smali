.class public interface abstract Ltv/periscope/android/api/ApiRecordKeeper;
.super Ljava/lang/Object;
.source "Twttr"


# virtual methods
.method public abstract cancelRequest(Ljava/lang/String;)V
.end method

.method public abstract isRequestCanceled(Ljava/lang/String;)Z
.end method

.method public abstract isRequestInFlight(Ljava/lang/String;)Z
.end method

.method public abstract recordRequest(Ljava/lang/String;)V
.end method

.method public abstract requestComplete(Ljava/lang/String;)V
.end method

.method public abstract shouldProcessRequest(Ltv/periscope/android/event/ApiEvent;)Z
.end method

.method public abstract shouldProcessRequest(Ltv/periscope/android/event/RetryEvent;)Z
.end method
