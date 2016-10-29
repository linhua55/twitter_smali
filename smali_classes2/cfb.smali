.class public Lcfb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lazt",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/database/model/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/model/q",
            "<",
            "Lbfx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/database/model/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/q",
            "<",
            "Lbfx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcfb;->a:Lcom/twitter/database/model/q;

    .line 186
    return-void
.end method

.method public static a(Lcom/twitter/database/model/l;)Lcfb;
    .locals 2

    .prologue
    .line 178
    const-class v0, Lbfw;

    .line 179
    invoke-interface {p0, v0}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbfw;

    invoke-interface {v0}, Lbfw;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 180
    new-instance v1, Lcfb;

    invoke-direct {v1, v0}, Lcfb;-><init>(Lcom/twitter/database/model/q;)V

    return-object v1
.end method

.method static synthetic a(Lcfb;)Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcfb;->a:Lcom/twitter/database/model/q;

    return-object v0
.end method

.method private a()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcfc;

    invoke-direct {v0, p0}, Lcfc;-><init>(Lcfb;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {p1}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-direct {p0}, Lcfb;->a()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 173
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcfb;->a(Ljava/lang/String;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    return-void
.end method
