.class public Lcom/twitter/model/timeline/cd;
.super Lcom/twitter/model/timeline/ay;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/timeline/ba;
.implements Lcom/twitter/model/timeline/bc;
.implements Lcom/twitter/model/timeline/be;


# instance fields
.field public final a:Lcom/twitter/model/core/cs;

.field public final n:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/twitter/model/timeline/cf;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 25
    iget-object v0, p1, Lcom/twitter/model/timeline/cf;->a:Lcom/twitter/model/core/cs;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    iput-object v0, p0, Lcom/twitter/model/timeline/cd;->a:Lcom/twitter/model/core/cs;

    .line 27
    iget-object v0, p1, Lcom/twitter/model/timeline/cf;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/cd;->n:Ljava/lang/String;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/cf;ILcom/twitter/model/timeline/ce;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/cd;-><init>(Lcom/twitter/model/timeline/cf;I)V

    return-void
.end method

.method public static a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/model/timeline/cf;

    invoke-direct {v0}, Lcom/twitter/model/timeline/cf;-><init>()V

    .line 42
    invoke-virtual {v0, p0}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/cf;->a(I)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    iget-wide v2, p0, Lcom/twitter/model/core/cs;->L:J

    .line 44
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/timeline/cf;->b(J)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    iget-wide v2, p0, Lcom/twitter/model/core/cs;->b:J

    .line 45
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/timeline/cf;->a(J)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 46
    invoke-virtual {p0}, Lcom/twitter/model/core/cs;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/cf;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 41
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/model/timeline/cd;->a:Lcom/twitter/model/core/cs;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcss;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/model/timeline/cd;->a:Lcom/twitter/model/core/cs;

    iget-object v0, v0, Lcom/twitter/model/core/cs;->w:Lcss;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/model/timeline/cd;->a:Lcom/twitter/model/core/cs;

    invoke-virtual {v0}, Lcom/twitter/model/core/cs;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
