.class public Lcom/twitter/android/moments/ui/fullscreen/k;
.super Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/android/moments/ui/fullscreen/af;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/af;)V
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->g:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;-><init>(Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;)V

    .line 11
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/k;->a:Lcom/twitter/android/moments/ui/fullscreen/af;

    .line 12
    return-void
.end method
