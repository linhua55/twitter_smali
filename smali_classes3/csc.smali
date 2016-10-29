.class public final Lcsc;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcsa;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/twitter/model/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/av;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 58
    invoke-static {}, Lcom/twitter/model/core/j;->a()Lcom/twitter/model/core/j;

    move-result-object v0

    iput-object v0, p0, Lcsc;->g:Lcom/twitter/model/core/j;

    .line 57
    return-void
.end method

.method static synthetic a(Lcsc;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcsc;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcsc;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcsc;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcsc;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcsc;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcsc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcsc;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcsc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcsc;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcsc;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcsc;->f:Z

    return v0
.end method

.method static synthetic g(Lcsc;)Lcom/twitter/model/core/j;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcsc;->g:Lcom/twitter/model/core/j;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcsc;
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcsc;->a:J

    .line 63
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/j;)Lcsc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/av;",
            ">;)",
            "Lcsc;"
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcsc;->g:Lcom/twitter/model/core/j;

    .line 99
    return-object p0

    .line 98
    :cond_0
    invoke-static {}, Lcom/twitter/model/core/j;->a()Lcom/twitter/model/core/j;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcsc;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcsc;->d:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public a(Z)Lcsc;
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcsc;->f:Z

    .line 93
    return-object p0
.end method

.method public b(J)Lcsc;
    .locals 1

    .prologue
    .line 68
    iput-wide p1, p0, Lcsc;->b:J

    .line 69
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcsc;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcsc;->e:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public bq_()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 104
    iget-wide v0, p0, Lcsc;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcsc;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcsc;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(J)Lcsc;
    .locals 1

    .prologue
    .line 74
    iput-wide p1, p0, Lcsc;->c:J

    .line 75
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcsc;->e()Lcsa;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcsa;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcsa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcsa;-><init>(Lcsc;Lcsb;)V

    return-object v0
.end method
