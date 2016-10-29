.class public Lcom/twitter/model/moments/maker/ao;
.super Lcom/twitter/model/moments/maker/w;
.source "Twttr"


# instance fields
.field public final c:J


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/maker/ap;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/w;-><init>()V

    .line 18
    iget-wide v0, p1, Lcom/twitter/model/moments/maker/ap;->b:J

    iput-wide v0, p0, Lcom/twitter/model/moments/maker/ao;->c:J

    .line 19
    return-void
.end method
