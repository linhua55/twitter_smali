.class public Lcom/twitter/model/timeline/bx;
.super Lcom/twitter/model/timeline/ay;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/timeline/w;


# direct methods
.method private constructor <init>(Lcom/twitter/model/timeline/bz;I)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 12
    iget-object v0, p1, Lcom/twitter/model/timeline/bz;->a:Lcom/twitter/model/timeline/w;

    iput-object v0, p0, Lcom/twitter/model/timeline/bx;->a:Lcom/twitter/model/timeline/w;

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/bz;ILcom/twitter/model/timeline/by;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/bx;-><init>(Lcom/twitter/model/timeline/bz;I)V

    return-void
.end method
