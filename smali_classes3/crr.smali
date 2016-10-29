.class public final Lcrr;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcrp;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcrr;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcrr;->a:I

    return v0
.end method

.method static synthetic b(Lcrr;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcrr;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcrr;
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcrr;->a:I

    .line 82
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcrr;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcrp;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcrr;->a:I

    .line 76
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcrr;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcrr;->b:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcrr;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcrr;->e()Lcrp;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcrp;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcrp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcrp;-><init>(Lcrr;Lcrq;)V

    return-object v0
.end method
