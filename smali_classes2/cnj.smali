.class public Lcnj;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcnh;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcnj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcnj;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcnj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcnj;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcnj;)Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcnj;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcnj;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcnj;->d:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcnj;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcnj;->b:Ljava/lang/Object;

    .line 90
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcnj;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcnj;->a:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcnj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcnj;"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcnj;->c:Ljava/util/List;

    .line 96
    return-object p0
.end method

.method public a(Z)Lcnj;
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcnj;->d:Z

    .line 102
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcnj;->e()Lcnh;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcnh;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcnh;

    invoke-direct {v0, p0}, Lcnh;-><init>(Lcnj;)V

    return-object v0
.end method
