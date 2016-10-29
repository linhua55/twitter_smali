.class public abstract Lcom/twitter/model/dms/i;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:[I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/twitter/util/serialization/af;

    const/4 v1, 0x0

    const-class v2, Lcom/twitter/model/dms/bk;

    new-instance v3, Lcom/twitter/model/dms/bn;

    invoke-direct {v3}, Lcom/twitter/model/dms/bn;-><init>()V

    .line 28
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/twitter/model/dms/cf;

    new-instance v3, Lcom/twitter/model/dms/ci;

    invoke-direct {v3}, Lcom/twitter/model/dms/ci;-><init>()V

    .line 30
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/twitter/model/dms/az;

    new-instance v3, Lcom/twitter/model/dms/bc;

    invoke-direct {v3}, Lcom/twitter/model/dms/bc;-><init>()V

    .line 31
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/twitter/model/dms/at;

    new-instance v3, Lcom/twitter/model/dms/aw;

    invoke-direct {v3}, Lcom/twitter/model/dms/aw;-><init>()V

    .line 33
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/twitter/model/dms/cj;

    new-instance v3, Lcom/twitter/model/dms/cm;

    invoke-direct {v3}, Lcom/twitter/model/dms/cm;-><init>()V

    .line 35
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const-class v1, Lcom/twitter/model/dms/bx;

    new-instance v2, Lcom/twitter/model/dms/ca;

    invoke-direct {v2}, Lcom/twitter/model/dms/ca;-><init>()V

    .line 37
    invoke-static {v1, v2}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v1

    aput-object v1, v0, v4

    .line 27
    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a([Lcom/twitter/util/serialization/af;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/model/dms/i;->a:Lcom/twitter/util/serialization/ah;

    .line 40
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/model/dms/i;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method constructor <init>(Lcom/twitter/model/dms/j;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lcom/twitter/model/dms/j;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/dms/i;->c:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/twitter/model/dms/j;->a(Lcom/twitter/model/dms/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/i;->d:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/twitter/model/dms/j;->b(Lcom/twitter/model/dms/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/i;->e:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/twitter/model/dms/j;->c(Lcom/twitter/model/dms/j;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/dms/i;->f:I

    .line 54
    invoke-static {p1}, Lcom/twitter/model/dms/j;->d(Lcom/twitter/model/dms/j;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/dms/i;->g:I

    .line 55
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/model/dms/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/model/dms/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/model/dms/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/twitter/model/dms/i;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/twitter/model/dms/i;->g:I

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->f()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lcom/twitter/model/core/cx;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/twitter/model/core/da;

    invoke-direct {v0}, Lcom/twitter/model/core/da;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->e(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    .line 103
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->f(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    .line 104
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->g(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    .line 105
    invoke-virtual {v0}, Lcom/twitter/model/core/da;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
