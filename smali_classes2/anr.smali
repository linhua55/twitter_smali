.class public Lanr;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lanp;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:J

.field private d:Lckg;

.field private e:Lcom/twitter/model/core/Tweet;

.field private f:Lcom/twitter/model/core/TwitterUser;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 64
    iput p1, p0, Lanr;->a:I

    .line 65
    iput p2, p0, Lanr;->b:I

    .line 66
    iput-wide p3, p0, Lanr;->c:J

    .line 67
    return-void
.end method

.method static synthetic a(Lanr;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lanr;->a:I

    return v0
.end method

.method static synthetic b(Lanr;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lanr;->b:I

    return v0
.end method

.method static synthetic c(Lanr;)J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lanr;->c:J

    return-wide v0
.end method

.method static synthetic d(Lanr;)Lckg;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lanr;->d:Lckg;

    return-object v0
.end method

.method static synthetic e(Lanr;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lanr;->e:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method static synthetic f(Lanr;)Lcom/twitter/model/core/TwitterUser;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lanr;->f:Lcom/twitter/model/core/TwitterUser;

    return-object v0
.end method


# virtual methods
.method public a(Lckg;)Lanr;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lanr;->d:Lckg;

    .line 72
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Lanr;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lanr;->e:Lcom/twitter/model/core/Tweet;

    .line 78
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)Lanr;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lanr;->f:Lcom/twitter/model/core/TwitterUser;

    .line 84
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lanr;->d()Lanp;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lanp;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lanp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lanp;-><init>(Lanr;Lanq;)V

    return-object v0
.end method
