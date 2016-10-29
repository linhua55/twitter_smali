.class public Lcom/twitter/model/timeline/cg;
.super Lcom/twitter/model/timeline/ay;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/moments/at;


# direct methods
.method private constructor <init>(Lcom/twitter/model/timeline/ci;I)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 15
    iget-object v0, p1, Lcom/twitter/model/timeline/ci;->a:Lcom/twitter/model/moments/at;

    iput-object v0, p0, Lcom/twitter/model/timeline/cg;->a:Lcom/twitter/model/moments/at;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/ci;ILcom/twitter/model/timeline/ch;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/cg;-><init>(Lcom/twitter/model/timeline/ci;I)V

    return-void
.end method
