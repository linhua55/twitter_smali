.class public Lcom/twitter/model/timeline/bl;
.super Lcom/twitter/model/timeline/ay;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/timeline/bk;


# direct methods
.method private constructor <init>(Lcom/twitter/model/timeline/bn;I)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 12
    iget-object v0, p1, Lcom/twitter/model/timeline/bn;->a:Lcom/twitter/model/timeline/bk;

    iput-object v0, p0, Lcom/twitter/model/timeline/bl;->a:Lcom/twitter/model/timeline/bk;

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/bn;ILcom/twitter/model/timeline/bm;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/bl;-><init>(Lcom/twitter/model/timeline/bn;I)V

    return-void
.end method
