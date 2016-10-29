.class public Lctq;
.super Lctx;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/timeline/dd;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/twitter/model/timeline/dd;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lctx;-><init>(Ljava/lang/String;J)V

    .line 21
    iput-object p4, p0, Lctq;->a:Lcom/twitter/model/timeline/dd;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lctj;)Lcom/twitter/model/timeline/db;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/model/timeline/dc;

    invoke-direct {v0}, Lcom/twitter/model/timeline/dc;-><init>()V

    iget-wide v2, p0, Lctq;->c:J

    .line 28
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/timeline/dc;->a(J)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/dc;

    iget-object v1, p0, Lctq;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/dc;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/dc;

    iget-object v1, p0, Lctq;->a:Lcom/twitter/model/timeline/dd;

    .line 30
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/dc;->a(Lcom/twitter/model/timeline/dd;)Lcom/twitter/model/timeline/dc;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/twitter/model/timeline/dc;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/db;

    .line 27
    return-object v0
.end method

.method public synthetic b(Lctj;)Lcom/twitter/model/timeline/ay;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lctq;->a(Lctj;)Lcom/twitter/model/timeline/db;

    move-result-object v0

    return-object v0
.end method
