.class public Lcom/twitter/model/timeline/aq;
.super Lcom/twitter/model/timeline/ay;
.source "Twttr"


# instance fields
.field public final a:Lctd;


# direct methods
.method private constructor <init>(Lcom/twitter/model/timeline/as;I)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 15
    iget-object v0, p1, Lcom/twitter/model/timeline/as;->a:Lctd;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctd;

    iput-object v0, p0, Lcom/twitter/model/timeline/aq;->a:Lctd;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/as;ILcom/twitter/model/timeline/ar;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/aq;-><init>(Lcom/twitter/model/timeline/as;I)V

    return-void
.end method
