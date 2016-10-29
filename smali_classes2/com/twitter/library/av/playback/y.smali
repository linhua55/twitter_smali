.class public Lcom/twitter/library/av/playback/y;
.super Lbvu;
.source "Twttr"


# instance fields
.field public final b:Ljava/util/Date;

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/twitter/model/av/AVMedia;Ljava/util/Date;J)V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lbvu;-><init>(Lcom/twitter/model/av/AVMedia;)V

    .line 283
    iput-object p2, p0, Lcom/twitter/library/av/playback/y;->b:Ljava/util/Date;

    .line 284
    iput-wide p3, p0, Lcom/twitter/library/av/playback/y;->c:J

    .line 285
    return-void
.end method
