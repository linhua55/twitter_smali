.class public Lcom/twitter/library/av/playback/u;
.super Lbvu;
.source "Twttr"


# instance fields
.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/twitter/model/av/AVMedia;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lbvu;-><init>(Lcom/twitter/model/av/AVMedia;)V

    .line 298
    iput-object p2, p0, Lcom/twitter/library/av/playback/u;->b:Ljava/lang/Throwable;

    .line 299
    return-void
.end method
