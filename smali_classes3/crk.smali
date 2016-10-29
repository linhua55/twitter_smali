.class public Lcrk;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcri;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcrl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcrk;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcrk;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcrk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcrk;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcrk;)Lcrl;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcrk;->c:Lcrl;

    return-object v0
.end method


# virtual methods
.method protected L_()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/twitter/util/object/h;->L_()V

    .line 63
    iget-object v0, p0, Lcrk;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcrk;->b:Ljava/lang/String;

    .line 66
    :cond_0
    return-void
.end method

.method public a(J)Lcrk;
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Lcrk;->a:J

    .line 45
    return-object p0
.end method

.method public a(Lcrl;)Lcrk;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcrk;->c:Lcrl;

    .line 57
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcrk;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcrk;->b:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcrk;->e()Lcri;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcri;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcri;

    invoke-direct {v0, p0}, Lcri;-><init>(Lcrk;)V

    return-object v0
.end method
