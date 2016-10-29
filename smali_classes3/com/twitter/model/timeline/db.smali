.class public Lcom/twitter/model/timeline/db;
.super Lcom/twitter/model/timeline/ay;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/timeline/dd;


# direct methods
.method public constructor <init>(Lcom/twitter/model/timeline/dc;I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 18
    iget-object v0, p1, Lcom/twitter/model/timeline/dc;->a:Lcom/twitter/model/timeline/dd;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/dd;

    iput-object v0, p0, Lcom/twitter/model/timeline/db;->a:Lcom/twitter/model/timeline/dd;

    .line 19
    return-void
.end method
