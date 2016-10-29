.class public Lcom/twitter/app/common/list/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/list/b;


# instance fields
.field private final a:Lcom/twitter/util/object/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/i",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Z

.field private final e:Lcom/twitter/app/common/list/k;


# direct methods
.method public constructor <init>(Lcom/twitter/util/object/i;ZZLcom/twitter/app/common/list/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/object/i",
            "<",
            "Ljava/lang/Long;",
            ">;ZZ",
            "Lcom/twitter/app/common/list/k;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/twitter/app/common/list/j;->a:Lcom/twitter/util/object/i;

    .line 36
    iput-boolean p2, p0, Lcom/twitter/app/common/list/j;->c:Z

    .line 37
    iput-boolean p3, p0, Lcom/twitter/app/common/list/j;->d:Z

    .line 38
    iput-object p4, p0, Lcom/twitter/app/common/list/j;->e:Lcom/twitter/app/common/list/k;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/twitter/app/common/list/j;->c:Z

    return v0
.end method

.method public a(Z)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/twitter/app/common/list/j;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/app/common/list/j;->e:Lcom/twitter/app/common/list/k;

    invoke-interface {v0}, Lcom/twitter/app/common/list/k;->ak()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/twitter/app/common/list/j;->e:Lcom/twitter/app/common/list/k;

    invoke-interface {v0}, Lcom/twitter/app/common/list/k;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return v1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/list/j;->a:Lcom/twitter/util/object/i;

    invoke-interface {v0}, Lcom/twitter/util/object/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 57
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    iget-object v0, p0, Lcom/twitter/app/common/list/j;->e:Lcom/twitter/app/common/list/k;

    invoke-interface {v0}, Lcom/twitter/app/common/list/k;->am()J

    move-result-wide v6

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 57
    goto :goto_0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_1
.end method
