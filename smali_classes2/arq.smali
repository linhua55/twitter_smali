.class public Larq;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Laro;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Larq;->a:I

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Larq;->b:J

    return-void
.end method

.method static synthetic a(Larq;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Larq;->b:J

    return-wide v0
.end method

.method static synthetic b(Larq;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Larq;->c:J

    return-wide v0
.end method

.method static synthetic c(Larq;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Larq;->d:J

    return-wide v0
.end method

.method static synthetic d(Larq;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Larq;->e:Z

    return v0
.end method

.method static synthetic e(Larq;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Larq;->f:Z

    return v0
.end method

.method static synthetic f(Larq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Larq;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Larq;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Larq;->a:I

    return v0
.end method


# virtual methods
.method public a(I)Larq;
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Larq;->a:I

    .line 46
    return-object p0
.end method

.method public a(J)Larq;
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Larq;->b:J

    .line 51
    return-object p0
.end method

.method public a(Ljava/lang/String;)Larq;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Larq;->g:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public a(Z)Larq;
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Larq;->e:Z

    .line 66
    return-object p0
.end method

.method public b(J)Larq;
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Larq;->c:J

    .line 56
    return-object p0
.end method

.method public b(Z)Larq;
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Larq;->f:Z

    .line 71
    return-object p0
.end method

.method public bq_()Z
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Larq;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(J)Larq;
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Larq;->d:J

    .line 61
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Larq;->e()Laro;

    move-result-object v0

    return-object v0
.end method

.method public e()Laro;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Laro;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laro;-><init>(Larq;Larp;)V

    return-object v0
.end method
